module WB(clk,res,iRegDest,iMemAdd,iMemData,iRegWrite,iMemtoReg,oRegWrite,OMemtoReg,oRegDest,oMemAdd,oMemData);
input [31:0] iMemData;
input [31:0] iMemAdd;
input [4:0] iRegDest;
input clk;
input res;
input iRegWrite,iMemtoReg;

output [31:0] oMemData;
output [31:0] oMemAdd;
output [4:0] oRegDest;
output oRegWrite,oMemtoReg;

reg [31:0] oMemData;
reg [31:0] oMemAdd;
reg [4:0] oRegDest;
reg oRegWrite,oMemtoReg;

always@(posedge clk) begin 
if(res) begin
iMemData<=0;
end
else begin
end
end

always@(posedge clk) begin
iMemData<= oMemData;
iRegWrite<=oRegWrite;
iMemtoReg<=oMemtoReg;
iMemAdd<=oMemAdd;
iRegDest<=oRegDest;
end


endmodule
