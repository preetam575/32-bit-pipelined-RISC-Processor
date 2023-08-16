module mips(input clk,input res);
//IF
wire [31:0]InstAdd;
wire [31:0]Inst;
wire [31:0]NextInst;
wire [31:0]PCInst,PCInst1;

//ID
wire [31:0]InstId;
wire [31:0]NextInstId;
wire [31:0] operand1Id;
wire [31:0] operand2Id;
wire [31:0] outsignId,jumpconcat;
wire [2:0] ALUOpId;
wire [28:0] jumpaddId;
wire RegWriteId,RegDestId, ALUSrcId,MemReadId,MemWriteId,MemToRegId,BranchId,JumpId;

//EX
wire [31:0]NextInstEx;
wire [31:0] outsignEx;
wire [31:0] operand1Ex;
wire [31:0] operand2Ex,ALUoperandEx;
wire [31:0] shift2Ex;
wire [4:0] RegDest1Ex,RegDest2Ex,FinRedDestEx;
wire [31:0] ALUresEx;
wire [31:0] NextAddEx;
wire ZeroEx;
wire RegWriteEx,RegDestEx,ALUSrcEx,MemReadEx,MemWriteEx,MemToRegEx,BranchEx;
wire [2:0] ALUOpEx;
wire [2:0] ALUsel;

//MEM
wire [31:0] NextAddMem;
wire [31:0] ALUresMem;
wire [31:0] operand1Mem;
wire [4:0] FinRedDestMem;
wire ZeroMem;
wire [31:0]MemDataMem;
wire MemToRegMem,RegWriteMem,MemReadMem,MemWriteMem,BranchMem;

//WB
wire [31:0]MemDataWb;
wire [31:0] RegDataWb;
wire [31:0] FinRegDataWb;
wire [4:0] FinRegDestWb;
wire MemToRegWb,RegWriteWb;

wire PCSrc;
wire cout;
wire coutt;

assign PCSrc=ZeroMem&BranchMem;

assign jumpconcat={NextInstId[31:28],jumpaddId};

register_file inst(clk,res,RegDataWb,InstId[25:21],InstId[20:16],FinRegDestWb, FinRegDataWb,operand1Id,operand2Id);

alu inst1( operand1Ex, ALUoperandEx, ALUsel,ALUresEx,ZeroEx);

ALUcontol inst2(clk,outsignEx,ALUOpEx, ALUsel);

control inst3(clk,res,InstId[31:26],ALUOpId,RegDestId,RegWriteId, ALUSrcId,MemReadId,MemWriteId,MemToRegId,BranchId,JumpId);

pc inst4(PCInst1,clk,res,InstAdd);

InstMem inst19(1'b1,InstAdd,Inst);

memory inst20(MemWriteMem,MemReadMem,operand1Mem,ALUresMem[5:0],MemDataMem,clk,res);

sign_extend inst5(InstId[15:0],outsignId);

shift_two inst14(outsignEx,shift2Ex);

extend_2 inst18(InstId[25:0],jumpaddId);


bit_32_add inst15(NextInstEx,shift2Ex,1'b0,NextAddEx,cout);

pc_increment inst16(InstAdd,NextInst,coutt);

mux_5 inst6(RegDest1Ex,RegDest2Ex,FinRedDestEx,RegDestEx);

mux_31 inst7(operand2Ex,outsignEx,ALUoperandEx,ALUSrcEx);

mux_31 inst8(MemDataWb,RegDataWb, FinRegDataWb, MemToRegWb);

mux_31 inst9(NextInst,NextAddMem,PCInst,PCSrc);

mux_31 inst17(jumpconcat,PCInst,PCInst1,JumpId);

IF inst10(clk,res,Inst,NextInst,InstId,NextInstId);

ID inst11(clk,res,ALUOpId,RegDestId,RegWriteId,RegDestId, ALUSrcId,MemReadId,MemWriteId,MemToRegId,BranchId,operand1Id,
operand2Id,outsignId,InstId[25:21],InstId[20:16],NextInstId, ALUOpEx,RegDestEx,RegWriteEx,RegDestEx,ALUSrcEx,MemReadEx,MemWriteEx,MemToRegEx,BranchEx,
operand1Ex,operand2Ex,outsignEx,RegDest1Ex,RegDest2Ex,NextInstEx);

WB inst12(clk,res,FinRedDestMem,ALUresMem,MemDataMem,RegWriteMem,MemToRegMem,RegWriteWb,MemToRegWb,FinRegDestWb,
RegDataWb,MemDataWb);

EX inst13(clk,res,NextAddEx,ALUresEx,operand2Ex,FinRedDestEx,BranchEx,,MemReadEx,RegWriteEx,MemToRegEx,MemWriteEx,ZeroEx
RegWriteMem,MemToRegMem,FinRedDestMem,ALUresMem, NextAddMem,BranchMem,,MemWriteMem,MemReadMem,operand1Mem,ZeroMem);
