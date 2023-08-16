module mux_5(a,b,c,sel);
input [4:0]a;
input[4:0]b;
input sel;
output [4:0]c;
reg [4:0]c;
always@(a,b,sel) begin
if(sel) begin
c<=b;
end
else begin 
c<=a;
end
end
endmodule

