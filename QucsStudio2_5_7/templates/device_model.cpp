/***************************************************************************
 * component model name
 * dynamically linked library written in C++ for QucsStudio
 *
 * Copyright (C) 2011 by ...
 * This is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License (GPL v2).
 * NO WARRANTY AT ALL!
 ***************************************************************************/
 
#include <qucsstudio_library.h>

// --------------------------------------------------------------
// component parameter definition
// The GUI tries to read them. Therefore, the structure must not be changed!
// I.e. exactly one parameter in each line etc.
// The meaning of the fields is: {"name", "default value", visible, "description"}
tParameterDef parameterList[] = {
  {"noise", "yes",   true,  "with thermal noise [yes, no]"},
  {"Z",     "50",    false, "port impedances"},
  {"Temp",  "16.85", false, "temperature in degree Celsius"},
  {"T",     "1 ns",  false, "delay (for system simulation only)"}
};

// --------------------------------------------------------------
// just for convenience/comfort: alias names of component parameters
#define PARAM_NOISE  (Parameters[0].string)
#define PARAM_Z       getNumber(Parameters[1])
#define PARAM_TEMP    getNumber(Parameters[2])
#define PARAM_T       getNumber(Parameters[3])

// --------------------------------------------------------------
// just for convenience/comfort: alias names of component pins
// for analog models: first external nodes, then internal nodes
// for system models: first input nodes, then output nodes
#define INPUT1   Nodes[0]
#define INPUT2   Nodes[1]
#define OUTPUT   Nodes[2]

// --------------------------------------------------------------
// Use global variables if results that were calculated in
// 'fillMatrix()' are needed in 'fillNoiseMatrix()'.
// The name 'struct tGlobalVar' must not be changed.
// Global variables are initialized once with 0.
struct tGlobalVar {
  double Zi;
};

// --------------------------------------------------------------
// This function contains the analog component model.
void fillMatrix(Component *theComp, Node **Nodes, tParameter *Parameters, tGlobalVar *gVar,
                EqnSystem *sys, double freq, double time)
{
  double Vin1 = sys->getV(INPUT1, GND);   // get voltage at input1
  double Vin2 = sys->getV(INPUT2, GND);   // get voltage at input2

  gVar->Zi = PARAM_Z;
  if(gVar->Zi <= 0.0)
    return printError("Port impedance must be greater zero.");

  // apply linear resistance
  sys->setR(INPUT1, GND, gVar->Zi);
  sys->setR(INPUT2, GND, gVar->Zi);
  sys->setR(OUTPUT, GND, gVar->Zi);

  sys->setIQ(OUTPUT, GND, -2.0*Vin1*Vin2 / gVar->Zi);
  sys->setGC(OUTPUT, GND, INPUT1, GND, -2.0*Vin2 / gVar->Zi);
  sys->setGC(OUTPUT, GND, INPUT2, GND, -2.0*Vin1 / gVar->Zi);
}

// --------------------------------------------------------------
// This function contains the noise model.
// All values are noise current densities normalized to Boltzman's constant kB.
void fillNoiseMatrix(Component *theComp, Node **Nodes, tParameter *Parameters, tGlobalVar *gVar,
                     EqnSystem *sys, double freq)
{
  if(strcmp(PARAM_NOISE, "no") == 0)
    return;

  // thermal noise of linear resistances
  double ni = 4.0*TO_KELVIN(PARAM_TEMP) / gVar->Zi;
  sys->setNoiseG(INPUT1, GND, ni);
  sys->setNoiseG(INPUT2, GND, ni);
  sys->setNoiseG(OUTPUT, GND, ni);
}

// --------------------------------------------------------------
// This function contains the system model.
void work(Component *theComp, Node **Nodes, tParameter *Parameters)
{
  int n = sizeData();                // get size of data array
  complex *d = allocData(OUTPUT, n); // create array for output data

  int i;
  for(i=0; i<n; i++)
    if((abs(getData(INPUT1, i)) > 0.5) && (abs(getData(INPUT1, i)) > 0.5))
      d[i] = 1.0;
    else
      d[i] = 0.0;
}

// --------------------------------------------------------------
// This string contains the digital Verilog model.
// The GUI tries to read them. Therefore, the name 'char *verilogModel'
// and the structure must not be changed!
// %* is place holder for component identifier (e.g. X1)
// %0, %1, ... are placeholders for the port/net names
// %A, %B, ... are placeholders for parameters
char *verilogModel =
  "  // bit multiplier '%*'\n"
  "  assign #%D %2 = %1 & %0;\n";

// --------------------------------------------------------------
// This string contains the digital Verilog model.
// The GUI tries to read them. Therefore, the name 'char *vhdlModel'
// and the structure must not be changed!
// %* is place holder for component identifier (e.g. X1)
// %0, %1, ... are placeholders for the port/net names
// %A, %B, ... are placeholders for parameters
char *vhdlModel =
  "  -- bit multiplier '%*'\n"
  "  %2 <= %1 and %0 after %D;\n";

// --------------------------------------------------------------
// list of schematic symbols
char *symbolList[] = {
  "<.ID 20 19 X>\n"
  "<.PortSym 30 0 3 180>\n"
  "<.PortSym 0 30 2 90>\n"
  "<.PortSym 0 -30 1 270>\n"
  "<Line 30 0 -15 0 #000080 2 1>\n"
  "<Line 0 -30 0 15 #000080 2 1>\n"
  "<Line 0 30 0 -15 #000080 2 1>\n"
  "<Line -10 10 20 -20 #000080 3 1>\n"
  "<Line 10 10 -20 -20 #000080 3 1>\n"
  "<Ellipse -15 -15 30 30 #000080 2 1 #c0c0c0 1 0>\n"
};

// -------------------------------------------------------------------
// picture of component in PNG format
char icon[362] = {
  0x89,0x50,0x4E,0x47,0x0D,0x0A,0x1A,0x0A,0x00,0x00,0x00,0x0D,0x49,0x48,0x44,0x52,
  0x00,0x00,0x00,0x20,0x00,0x00,0x00,0x20,0x08,0x06,0x00,0x00,0x00,0x73,0x7A,0x7A,
  0xF4,0x00,0x00,0x00,0x01,0x73,0x52,0x47,0x42,0x00,0xAE,0xCE,0x1C,0xE9,0x00,0x00,
  0x00,0x06,0x62,0x4B,0x47,0x44,0x00,0xFF,0x00,0xFF,0x00,0xFF,0xA0,0xBD,0xA7,0x93,
  0x00,0x00,0x00,0x09,0x70,0x48,0x59,0x73,0x00,0x00,0x0B,0x13,0x00,0x00,0x0B,0x13,
  0x01,0x00,0x9A,0x9C,0x18,0x00,0x00,0x00,0x07,0x74,0x49,0x4D,0x45,0x07,0xDB,0x0A,
  0x0A,0x11,0x08,0x18,0x57,0x71,0x65,0x90,0x00,0x00,0x00,0xEA,0x49,0x44,0x41,0x54,
  0x58,0xC3,0xED,0x56,0x41,0x0E,0xC3,0x20,0x0C,0x8B,0x11,0xFF,0xFF,0xB2,0x77,0x28,
  0x4C,0x11,0x2D,0x74,0x31,0x68,0x5C,0xE0,0x42,0x55,0x04,0x76,0x12,0x3B,0x00,0x92,
  0xB6,0x73,0xA4,0xA9,0xDD,0xC0,0x46,0x02,0x17,0x38,0x67,0x49,0xCC,0x64,0x80,0x66,
  0x86,0x32,0x6F,0x20,0x40,0x5E,0xE0,0xD7,0xBC,0x47,0x03,0xD8,0x2E,0xC2,0x43,0x60,
  0xC1,0xC8,0x9A,0x03,0x71,0xFB,0x56,0x1B,0x1A,0x22,0x1B,0x1D,0x30,0x7B,0x9A,0x8C,
  0x12,0xC9,0x82,0xF7,0x8D,0x0F,0xD6,0x03,0x40,0xC5,0x1C,0x29,0x1A,0xBD,0x07,0xF7,
  0xA5,0xA8,0xFF,0x11,0xEC,0x8C,0x29,0x00,0x4E,0x92,0xA8,0x91,0x56,0x20,0x37,0xB3,
  0x90,0x60,0x84,0xC4,0xAF,0x19,0xA8,0x87,0x9B,0x27,0xE1,0xD3,0xEF,0xD7,0x23,0xED,
  0x59,0xB5,0xA1,0x07,0x61,0xA8,0xEE,0x0D,0x79,0xC9,0x86,0x45,0xE9,0xF0,0x91,0x0F,
  0x44,0xD9,0x2A,0x18,0x06,0x7C,0xEF,0x90,0xAC,0x36,0x90,0x02,0xD0,0x25,0xD1,0x23,
  0xE6,0xC1,0xE5,0x12,0xB4,0x35,0x7F,0x8A,0xF6,0xE5,0x16,0x8D,0x69,0xA0,0x51,0xFF,
  0x2D,0xE2,0xB7,0xF5,0x95,0x9D,0x70,0x78,0x78,0x14,0x5C,0x2A,0x41,0x2F,0xDD,0xA1,
  0x32,0xA8,0x19,0x18,0x2A,0x5C,0x7C,0x19,0x61,0xE6,0x59,0xAE,0xA4,0xFC,0x3C,0x48,
  0x0E,0x81,0xA5,0x04,0xB8,0x95,0x40,0xED,0xE9,0xA2,0xFF,0x97,0xD8,0xB0,0xBD,0x58,
  0xFE,0x4F,0x60,0xC1,0xF8,0x00,0xE3,0x5D,0x99,0x3E,0x90,0x7A,0x36,0xE7,0x00,0x00,
  0x00,0x00,0x49,0x45,0x4E,0x44,0xAE,0x42,0x60,0x82
};

// --------------------------------------------------------------
// component definition
// The GUI tries to read them. Therefore, the structure must not be changed!
// I.e. exactly one property in each line etc.
EXPORT tComponentInfo compInfo = {
  isNonLinear,        // component type ('isNonLinear' or 'isLinear')
  "model name",       // model identifier
  "model description", // component description
  3,                  // number of external nodes
  0,                  // number of internal nodes
  2,                  // number of inputs (system simulations only)
  sizeof(parameterList)/sizeof(parameterList[0]),  // number of parameters
  parameterList,      // pointer to list of parameters
  sizeof(tGlobalVar), // size of global variable buffer in bytes
  icon,               // pointer to component icon (0 = unused)
  sizeof(icon),       // size of component icon
  -1,                 // index of parameter determining schematic symbol (-1 = unused)
  symbolList,         // pointer to list of schematic symbols (0 = unused)
  fillMatrix,         // function calculating analog model (0 = no model exists)
  fillNoiseMatrix,    // function calculating noise model (0 = noise free)
  work,               // function calculating system model (0 = no model exists)
  verilogModel,       // string with digital Verilog model (0 = no model exists)
  vhdlModel           // string with digital VHDL model (0 = no model exists)
};
