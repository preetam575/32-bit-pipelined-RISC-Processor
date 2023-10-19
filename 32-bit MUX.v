module mux_31(a,b,c,sel);
input [31:0]a;
input[31:0]b;
input sel;
output [31:0]c;
reg [31:0]c;
always@(a,b,sel) begin
if(sel) begin
c<=b;
end
else begin 
c<=a;
end
end
endmodule
