module extend_2(a,b);
input [25:0] a;
output [27:0] b;
reg [27:0]b;
always@(a)begin
b<={a,2'b0};
end
endmodule
