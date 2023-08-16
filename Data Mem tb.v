`timescale 1ns / 1ps
module memory_test();
reg clk;
reg res;
reg memwr;
reg memrd;
reg [31:0]data;
reg [5:0] address;
wire [31:0] datao;

memory uut(memwr,memrd,data,address,datao,clk,res);
initial begin
clk=1'b0;
res=1;
#7
res=0;
end
always #5 clk=~clk;
initial begin
memwr=1;
memrd=0;
address=34;
data=1;
#15
memwr=1;
memrd=0;
address=5;
data=9;
#15
memwr=0;
memrd=1;
address=4;
data=2;
end

endmodule
