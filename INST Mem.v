module InstMem( input memread,input [31:0]data,output [31:0]datao,input res);
reg [31:0] mem_array[127:0];
reg [31:0]datao;
integer i;

always@(memread,data,negedge res) begin
if(res) begin
for(i=8;i<128;i=i+1) begin
mem_array[i]=1'b0;
end
mem_array[1]={6'b0,5'b10,5'b1,5'b100,5'b0,6'b100010};
mem_array[2]={6'b0,5'b10,5'b1,5'b101,5'b0,6'b100101};
mem_array[3]={6'b0,5'b10,5'b1,5'b110,5'b0,6'b100100};
mem_array[4]={6'b0,5'b10,5'b1,5'b111,5'b0,6'b101010};
	
mem_array[5]={6'b001000,5'b10,5'b1000,16'b1010};
mem_array[6]={6'b001010,5'b10,5'b1001,16'b1010};
mem_array[7]={6'b001101,5'b10,5'b1010,16'b1010};
end
else begin
dato<=mem_array[data]
end
end

endmodule
