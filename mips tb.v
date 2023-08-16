`timescale 1ns / 1ps
module TB;
reg clk;
reg res;
initial begin
res=1;
    clk=1'b0;
  end
always #5 clk=~clk;

mips sc1(clk,res);
endmodule
