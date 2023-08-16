module sign_extend( input signed [15:0] a, output signed [31:0]b);

assign b={{16{a[15]}},a};
endmodule
