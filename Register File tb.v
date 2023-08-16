module register_filetest();
reg clk;
reg res;
reg wr_en;
reg [4:0]Ra;
reg [4:0]Rb;
reg [4:0]wr_reg;
reg [31:0] data;
wire [31:0]data_out1;
wire [31:0] data_out2;

register_file uut(.clk(clk),.res(res),.wr_en(wr_en),.Ra(Ra),.Rb(Rb),.wr_reg(wr_reg),.data(data),.data_out1(data_out1),.data_out2(data_out2));
initial begin
clk=1'b0;
res=1;
#20
res=0;
end
always #5 clk=~clk;
initial begin
Ra=4;
Rb=5;
wr_en=0;
data=42;
wr_reg=3;
#30
Ra=9;
Rb=2;
wr_en=1;
data=42;
wr_reg=18;
#30
Ra=18;
Rb=15;
wr_en=0;
data=4;
wr_reg=11;
#30
Ra=18;
Rb=15;
wr_en=0;
data=4;
wr_reg=1;

end


endmodule
