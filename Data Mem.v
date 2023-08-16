module memory( input memwr, input memrd,input [31:0]data, input [5:0]address, output [31:0]datao, input clk,input res);
reg [31:0] mem_array[63:0];
reg [31:0]datao;
integer i;

always@(data,address,memwr,memrd,negedge res) begin
if(res) begin
for(i=0;i<64;i=i+1) begin
mem_array[i]=1'b0;
end
end
else begin
end
end
always@(posedge clk or negedge res) begin
if(memwr) begin
mem_array[address]<=data;
end
if(memrd) begin
datao<=mem_array[address];
end
end
endmodule
