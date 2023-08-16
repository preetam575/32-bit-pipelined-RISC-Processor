 module bit_32_add(input [31:0] a,input [31:0]b,input cin,output[31:0]sum,output cout);
  wire [31:0] coutt;
  genvar i;
  fa inst1(.a(a[0]),.b(b[0]),.cin(cin),.c(sum[0]),.cout(coutt[0]));
  generate
  for(i=1;i<32;i=i+1) begin: adc
  fa insti(.a(a[i]),.b(b[i]),.cin(coutt[i-1]),.c(sum[i]),.cout(coutt[i]));
  end
  endgenerate
  assign cout=coutt[3];
 
endmodule


module fa(input a,input b,input cin, output c,output cout);
  assign c=a^b^cin;
  assign cout=a&b|a&cin|b&cin;
endmodule
