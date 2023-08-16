module IF(clk,res,iInst,iNextInst,oInst,ONextInst);
input [31:0] iInst;
input [31:0] iNextInst;
input clk;
input res;

output [31:0] oinst;
output [31:0] oNextInst;

reg [31:0] oinst;
reg [31:0] oNextInst;

always@(posedge clk) begin 
if(res) begin
iInst<=0;
iNextInst<=0;
end
else begin
end
end

always@(posedge clk) begin
iInst<= oinst;
iNextInst<=oNextInst;
end


endmodule
