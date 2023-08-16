`timescale 1ns / 1ps
module test();
reg[5:0] opcode;
reg clk;
reg res;
wire[2:0] ALUOp;
wire RegDest,RegWrite,ALUSrc,MemRead,MemWrite,MemToReg,Branch,Jump;
control uut(clk,res,opcode,ALUOp,RegDest,RegWrite,ALUSrc,MemRead,MemWrite,MemToReg,Branch,Jump);
initial begin
clk=1'b0;
res=1;
#7
res=0;
end
always #5 clk=~clk;
initial begin
opcode=6'b000000;
#15
opcode=6'b001000;
#15
opcode= 6'b001110;
end
endmodule
