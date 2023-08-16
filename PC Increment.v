module pc_incremant(a,b,coutt);
input [31:0]a;
output [31:0]b;
output coutt;
reg [31:0]b;
reg coutt;
wire bb
bit_32_add inst(a,31'b1,1'b0,bb,coutt);
always@(a) begin
b<=bb;
end
endmodule
