module register_file(
input clk,
input res,
input wr_en,
input [4:0]Ra,
input [4:0]Rb,
input [4:0]wr_reg,
input [31:0] data,
output reg [31:0]data_out1,
output reg [31:0] data_out2);

reg  [31:0]regg [31:0];
integer i;
always@(posedge clk) begin
if(res) begin
for(i=0;i<32;i=i+1) begin
regg[i]<=1'b0;
end
end
else begin
end
end
always@(posedge clk) begin
if(wr_en) begin
regg[wr_reg]<=data;
regg[0]<=0;
end
else begin
end
end

assign data_out1=regg[Ra];
assign data_out2=regg[Rb];
endmodule
