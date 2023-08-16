module alu(a,b,sel,c,zero_flag);
  input signed [31:0] a;
  input signed [31:0]b;
  input [2:0]sel;
  output signed[31:0]c;
  output zero_flag;
 
  reg signed  [31:0]c;
  reg zero_flag;
 
  wire  [31:0]add_ctrl;
  wire [31:0] sub_ctrl;
 
  wire ad_cout;
  wire sub_cout;
 
  add_sub addd(a,b,1'b0,add_ctrl,ad_cout);
  add_sub subb(a,b,1'b1,sub_ctrl,sub_cout);
 
  always@(*) begin
    case(sel)
      3'b000:c<={add_ctrl};
      3'b001:c<={sub_ctrl};
      3'b010:c<=a&b;
      3'b011:c<=a|b;
      3'b100:c<=a<<1;
      3'b101:c<=a^b;
      3'b110:c<=a>>1;
      
      default:c<=c;
    endcase
    if(c==0)begin
      zero_flag=1'b1;
    end
    else begin
      zero_flag=1'b0;
    end
  end
endmodule
 
