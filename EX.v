module EX(clk,res,iNextInst,iMemAdd,iMemData,iRegDest,ibranch,iMemRead,iRegWrite,iMemtoReg,iMemWrite,izero
oRegWrite,oMemtoReg,oRegDest,oMemAdd,oNextInst,obranch,oMemWrite,oMemRead,oMemData,ozero
);
input [31:0] iMemData,iNextInst;
input [31:0] iMemAdd;
input [4:0] iRegDest;
input clk;
input res;
input iRegWrite,iMemtoReg,ibranch,iMemRead,iMemWrite;

output [31:0] oMemData,oNextInst;
output [31:0] oMemAdd;
output [4:0] oRegDest;
output oRegWrite,oMemtoReg,obranch,oMemWrite,oMemRead;

reg [31:0] oMemData,oNextInst;
reg [31:0] oMemAdd;
reg [4:0] oRegDest;
reg oRegWrite,oMemtoReg,obranch,oMemWrite,oMemRead;

always@(posedge clk) begin 
if(res) begin
iMemData<=0;
end
else begin
end
end

always@(posedge clk) begin
izero<=ozero;
iMemData<= oMemData;
iRegWrite<=oRegWrite;
iMemtoReg<=oMemtoReg;
iMemAdd<=oMemAdd;
iRegDest<=oRegDest;
iNextInst<=oNextInst;
ibranch<=obranch;
iMemRead<=oMemRead;
iMemWrite<=oMemWrite

end


endmodule
