module ID(clk,res,iALUOp,iRegDest,iRegWrite,iALUSrc,iMemRead,iMemWrite,iMemToReg,iBranch,ioperand1,ioperand2,iextinst,iregdest1,iregdest2,
iNextInst,oALUOp,oRegDest,oRegWrite,oALUSrc,oMemRead,oMemWrite,oMemToReg,oBranch,ooperand1,ooperand2,oextinst,oregdest1,oregdest2,oNextInst);
input [31:0] ioperand1,ioperand2,iextinst;
input [4:0] iregdest1,iregdest2;
input [31:0] iNextInst;
input iRegDest,iRegWrite,iALUSrc,iMemRead,iMemWrite,iMemToReg,iBranch;
input [2:0]iALUOp;
input clk;
input res;

output[31:0] ooperand1,ooperand2,oextinst;
output [31:0] oNextInst;
output [4:0] oregdest1,oregdest2;
output oRegDest,oRegWrite,oALUSrc,oMemRead,oMemWrite,oMemToReg,oBranch;
output [2:0]oALUOp;

reg [31:0]  ooperand1,ooperand2,oextinst;
reg [31:0] oNextInst;
reg [4:0] oregdest1,oregdest2;
reg oRegDest,oRegWrite,oALUSrc,oMemRead,oMemWrite,oMemToReg,oBranch;
reg [2:0]oALUOp;

always@(posedge clk) begin 
if(res) begin
iNextInst<=0;
end
else begin
end
end

always@(posedge clk) begin
iNextInst<=oNextInst;
ioperand1<=ooperand1;
ioperand2<=ooperand2;
iextinst<=oextinst;
iregdest1<=oregdest1;
iregdest2<=oregdest2;
iALUOp<=oALUOp;
iRegDest<=oRegDest;
iRegWrite<=oRegWrite;
iALUSrc<=oALUSrc;
iMemRead<=oMemRead;
iMemWrite<=oMemWrite;
iMemToReg<=oMemToReg;
iBranch<=oBranch;

end


endmodule
