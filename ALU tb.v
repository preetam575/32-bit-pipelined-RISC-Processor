`timescale 1ns / 1ps
module alu_test();
reg [31:0] X;
  reg [31:0] Y;
  reg [2:0]sel;

    // Outputs
  wire [31:0] Z;
  wire zero_flag;

  alu uut (X,Y,sel,Z,zero_flag);

    initial begin
        // Initialize Inputs
        X = 0;
        Y =1;
        sel=1;
        #100;
        X=0;
          Y=7;
      sel=2;
        #100;
        X=56;
          Y=7;
      sel=0;
        #100;
        X=64;
          Y=7;
      sel=3;

    end
