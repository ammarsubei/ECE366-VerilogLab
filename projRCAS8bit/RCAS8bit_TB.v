`include "RCAS8bit.v"
module RCAS8bit_TB;
  // Your inputs
  reg [7:0] a;
  reg [7:0] b;
  reg add_sub;
  
  // Your outputs
  wire [7:0] sum;
  wire cout;
  wire OV;
  // Clock
  integer ctr;

  RCAS8bit adder(a, b, add_sub, sum, cout, OV);
  initial begin
    #10 add_sub=0; a=0; b=0;
    #10 add_sub=1; a=4; b=2;
    #10 add_sub=0; a=5; b=14;
    #10 add_sub=0; a=45; b=74;
    #10 add_sub=0; a=198; b=54;
    #10 add_sub=1; a=249; b=7;
    #10 add_sub=1; a=156; b=121;
    #10 add_sub=1; a=123; b=0;
    #10 add_sub=1; a=255; b=255;
    #10 add_sub=1; a=0; b=255;
    #10 $stop;
  end

  initial begin
    $monitor("At time:%d: add_sub, a, b: %b %d %d; sum, cout: %d %b; OV: %b", $time, add_sub, a, b, sum, cout, OV);
  end

endmodule
