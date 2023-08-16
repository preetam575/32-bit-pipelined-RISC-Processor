module pc(input [31:0] in, input clk,input res,output [31:0] IR);
integer i;
always@(posedge clk or negedge res) begin
if (res) begin
in<=1'b0;
end
else begin
IR<=in;
end
end
