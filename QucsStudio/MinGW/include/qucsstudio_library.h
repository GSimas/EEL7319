/***************************************************************************
 * copyright: (C) 2011...2015 by Michael Margraf
 * This is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License.
 ***************************************************************************/

#ifndef QUCSSTUDIO_LIBRARY_H
#define QUCSSTUDIO_LIBRARY_H

class Node;
class Component;
class EqnSystem;
class Substrate;
struct tParameter;
struct tSysSimData;

#ifdef BUILD_DLL
#include <complex>
typedef std::complex<double> complex;
#endif


#ifdef __cplusplus
// export functions with C linkage
extern "C"
{
#endif


#ifdef BUILD_DLL

#define TNORM      290.0
#define BOLTZMANN  1.380650524e-23
#define KB_DIV_Q   0.86173433260414314916e-4
#define QELECTRON  1.6021765314e-19
#define LIGHTSPEED 299792458.0
#define Z_FIELD    376.73031346958504364963
#define EPSILON0   8.854187817e-12
#define MU0        12.566370614e-7

#define TO_KELVIN(T)   ((T) + 273.15)
#define TO_RADIAN(P)   ((P) * M_PI/180.0)
#define TO_DEGREE(P)   ((P) * 180.0/M_PI)

// helpers for get simulation type in function (*tEvaluate) (EqnSystem*, freq, time)
#define IS_AC_ANALYSIS              (freq > 0.0)
#define IS_DC_ANALYSIS              (time < 0.0)
#define IS_DC_INITIAL               (time < -2.0)
#define IS_REAL_DC_ANALYSIS        ((time == -1.0) || (time == -3.0))
#define IS_TRANSIENT_ANALYSIS       (freq < 0.0)
#define IS_TRANSIENT_INITIAL        (freq == -3.0)
#define IS_NOT_TRANSIENT_ANALYSIS   (freq >= 0.0)
#define IS_DC_OR_TRANSIENT_ANALYSIS (freq <= 0.0)
#define IS_POST_HB_SOURCE           ((time < 0.0) && (freq > 0.0))

// indeces for Substrate::getProperty(int)
#define SUBST_PERMITTIVITY  0
#define SUBST_HEIGHT        1
#define SUBST_THICKNESS     2
#define SUBST_LOSS_TANGENT  3
#define SUBST_RESISTIVITY   4
#define SUBST_ROUGHNESS     5
#define SUBST_BACKSIDE      6
#define SUBST_MS_MODEL      7
#define SUBST_MS_DISPMODEL  8

class Substrate
{
public:
  double getProperty(int);
};


struct tSysSimData { // used in system simulation
  double symRate;    // symbol rate, e.g. 40 GSym/s
  int npSym;         // samples per symbol, e.g. 32
  int numSym;        // number of symbols, e.g. 1024
  double sampleRate; // sample rate = symRate * npSym
};

class Subcircuit;

struct tParameter {
  char *string;
  double number;
};


// component type definition
// Only the 8 least-significant bits contain the component type.
// The more-significant bits contain the version:
// 0 = old MinGW style (not supported anymore)
// 1 = compiled with Microsoft VC++ (not supported anymore)
// 2 = compiled with MinGW
enum {  // component type definition
  isLinear        = 0x0210,
  isNonLinear     = 0x0220,
  isVoltSource    = 0x0241,
  isCurrSource    = 0x0242,
  isPowerSource   = 0x0244
};

class Node
{
public:
  Node(char*, Subcircuit*);
 ~Node();

  void initData(int, bool, bool, bool);
  void saveDate(void*);
  void saveNoiseDate(double);
  void saveComplexDate(void*);

  // for system simulation
  complex* allocData(int);
  complex  getData(int);
  void getFullName(char*, const char*, const char*);

  // The number of the node. It corresponds to the row number of the MNA matrix.
  // This number may be changed during the matrix stamping, because shorted nodes
  // are routed to one node.
  int Number;

  // The number of the node. It corresponds to the row number of the MNA matrix.
  // This number never changes during the simulation. It is used to get the
  // DC bias, because there may be AC shorts that are not DC shorts.
  int origNumber;

  // Pointer to the simulation results.
  complex *data;
  double  *noiseData;

  char *Name;
  Node *next;
  Subcircuit *subCircuit;  // the subcircuit it belongs to

  #define NODEFLAG_WARNING    1
  #define NODEFLAG_HASDRIVER  2
  #define NODEFLAG_CURRENT    4
  int flag;
};


class EqnSystem
{
public:
  EqnSystem(int);

  // for linear components
  virtual void _setA(int, Node*, Node*, complex) __attribute__((fastcall));
  virtual void _setG(int, Node*, Node*, complex) __attribute__((fastcall));
  virtual void _setR(int, Node*, Node*, complex) __attribute__((fastcall));
  virtual void _setC(int, Node*, Node*, double, double *initVoltage=0) __attribute__((fastcall));
  virtual void _setL(int, Node*, Node*, Node*, double, double *initCurrent=0) __attribute__((fastcall));
  virtual void _setM(int, Node*, Node*, double) __attribute__((fastcall));
  virtual void _setI(int, Node*, Node*, complex) __attribute__((fastcall));
  virtual void _setDelayedI(int, Node*, Node*, double, double, double*&) __attribute__((fastcall));
  virtual void _getSimInfo(int&, double&) __attribute__((fastcall));

  // G = dI / dV and C = dQ / dV for non-linear components
  virtual void _setIQ(int, Node*, Node*, double, double charge=0.0) __attribute__((fastcall));
  virtual void _setGC(int, Node*, Node*, Node*, Node*, double, double cap=0.0) __attribute__((fastcall));

  // noise current correlation matrix
  virtual void _setNoiseA(int, Node*, Node*, complex) __attribute__((fastcall));
  virtual void _setNoiseG(int, Node*, Node*, complex) __attribute__((fastcall));
  virtual void _setNoiseNG(int, Node*, Node*, complex) __attribute__((fastcall));

  virtual double _getV(int, Node*, Node*) __attribute__((fastcall));

protected:
  int Size;
  int mode;
};

#define setA(n1,n2,c)       _setA(0,n1,n2,c)
#define setG(n1,n2,c)       _setG(0,n1,n2,c)
#define setR(n1,n2,c)       _setR(0,n1,n2,c)
#define setC(n1,n2, ...)    _setC(0,n1,n2, ##__VA_ARGS__)
#define setL(n1,n2,n3, ...) _setL(0,n1,n2,n3, ##__VA_ARGS__)
#define setM(n1,n2,d)       _setM(0,n1,n2,d)
#define setI(n1,n2,c)       _setI(0,n1,n2,c)
#define setDelayedI(n1,n2,d1,d2,p)  _setDelayedI(0,n1,n2,d1,d2,p)
#define setIQ(n1,n2,d1, ...)        _setIQ(0,n1,n2,d1, ##__VA_ARGS__)
#define setGC(n1,n2,n3,n4,d1, ...)  _setGC(0,n1,n2,n3,n4,d1, ##__VA_ARGS__)
#define setNoiseA(n1,n2,c)   _setNoiseA(0,n1,n2,c)
#define setNoiseG(n1,n2,c)   _setNoiseG(0,n1,n2,c)
#define setNoiseNG(n1,n2,c)  _setNoiseNG(0,n1,n2,c)
#define getV(n1,n2)          _getV(0,n1,n2)
#define getSimInfo(i,d)      _getSimInfo(0,i,d)


struct tGlobalVar;
typedef void (*tEvaluate) (Component *theComp, Node **Nodes, tParameter *Parameters, tGlobalVar *gVar, EqnSystem*, double, double);
typedef void (*tEvaluateNoise) (Component *theComp, Node **Nodes, tParameter *Parameters, tGlobalVar *gVar, EqnSystem*, double);

#else  // of "BUILD_DLL"

typedef double (Component::*tGetNumber) (tParameter&);
typedef void (Component::*tPrintError) (const char*, ...);
typedef void (Component::*tPrintWarning) (const char*, ...);
typedef Substrate* (Component::*tGetSubstrate) (char*);
typedef double (Substrate::*tGetProperty) (int);
typedef int (Component::*tSizeData) ();
typedef complex* (Node::*tAllocData) (int);
typedef complex (Node::*tGetData) (int);

typedef void (*tEvaluate) (Component *theComp, Node **Nodes, tParameter *Parameters, void *gVar, EqnSystem*, double, double);
typedef void (*tEvaluateNoise) (Component *theComp, Node **Nodes, tParameter *Parameters, void *gVar, EqnSystem*, double);

#endif

typedef void (*tEvaluateSystem) (Component*, Node**, tParameter*, tSysSimData*);

// ****** definition of structures *************************************************

struct tParameterDef {
  const char *name;         // identifier of parameter (e.g. "Temp" for temperature)
  const char *defaultValue; // initial value of parameter
  bool visible;             // shown on schematic or not
  const char *description;  // short description of parameter (one text line)
};

struct tComponentInfo {
  int  type;                  // linear, non-linear, etc.
  const char *modelName;      // unique identifier within this DLL (e.g. "BSIM3")
  const char *description;    // short description of the component (one text line)
  int numNodes;               // number of schematic connections
  int numInternNodes;         // number of internal nodes
  int numInputs;              // number of input nodes (for system simulations only)
  int numParameters;          // number of parameters in list
  tParameterDef *parameters;  // pointer to list of parameter definitions
  int sizeGlobalVars;         // size of global variable buffer in bytes
  char *picture;              // pointer to icon in PNG format
  int  pictureSize;           // size of PNG icon
  int symbolIndex;            // index of parameter determining schematic symbol
  char **symbols;             // pointer to list of schematic symbols
  tEvaluate evaluate;         // pointer to function of analog model
  tEvaluateNoise evalNoise;   // pointer to function of noise model
  tEvaluateSystem evalSystem; // pointer to function of system model
  char *verilogModel;         // pointer to digital Verilog model string
  char *vhdlModel;            // pointer to digital VHDL model string
};


struct tQucsDllInfo {
  int version;               // version of QucsStudio DLL format
  const char *libraryName;   // name of this library (e.g. "digital gates")
  tComponentInfo **compInfo; // pointer to list of component definitions
};


#ifdef BUILD_DLL

// API functions for components
__declspec(dllexport) Node *GND;
__declspec(dllexport) double (*dllGetNumber) (Component*,int,tParameter&) __attribute__((fastcall));
__declspec(dllexport) void (*dllPrintError) (Component*,const char*, ...);
__declspec(dllexport) void (*dllPrintWarning) (Component*,const char*, ...);
__declspec(dllexport) Substrate* (*dllGetSubstrate) (Component*,int, char*) __attribute__((fastcall));
__declspec(dllexport) double (*dllGetProperty) (Substrate*,int, int) __attribute__((fastcall));
__declspec(dllexport) int (*dllSizeData) (Component*,int) __attribute__((fastcall));
__declspec(dllexport) complex* (*dllAllocData) (Node*,int, int) __attribute__((fastcall));
__declspec(dllexport) complex (*dllGetData) (Node*, int);

// DLL export
#define EXPORT __declspec(dllexport)

#define getNumber(num)         ((*dllGetNumber) (theComp,0,num))
#define printError(str, ...)   ((*dllPrintError) (theComp,str, ##__VA_ARGS__))
#define printWarning(str, ...) ((*dllPrintWarning) (theComp,str, ##__VA_ARGS__))
#define getSubstrate(str)      ((*dllGetSubstrate) (theComp,0,str))
#define sizeData()             ((*dllSizeData) (theComp,0))
#define allocData(node,n)      ((*dllAllocData) (node,0,n))
#define getData(node,index)    ((*dllGetData) (node,index))
#define getSubstrateProperty(substr, num)  ((*dllGetProperty) (substr,0,num))

#endif  // of "BUILD_DLL"

#ifdef __cplusplus
} // __cplusplus defined.
#endif

#endif  // of "QUCSSTUDIO_LIBRARY_H"
