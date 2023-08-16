module shift_two(a,b);
input [15:0] a;
output [15:0] b;
reg [15:0]b;
always@(a)begin
b<=a<<2;
end
endmodule
