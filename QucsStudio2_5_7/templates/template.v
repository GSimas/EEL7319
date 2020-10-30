// ***********************************************************
// Description:
// Date:
// Author:
// ***********************************************************


// -----------------------------------------------------------
// sub module

module SubModule (signal1, signal2);
  input signal1;
  output signal2;

  assign signal2 = ~signal1;
endmodule


// -----------------------------------------------------------
// main module

`timescale 1ps/100fs

module TestBench ();
  wire gnd, signal1;

  assign gnd = 0;
  SubModule Sub1 (gnd, signal1);

  initial begin
    $dumpfile("digi.vcd");
    $dumpvars();
    #10000 $finish;    // run 10ns
  end

endmodule   // of 'TestBench'
