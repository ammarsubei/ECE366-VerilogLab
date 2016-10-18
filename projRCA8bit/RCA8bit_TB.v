`include "RCA8bit.v"
module RCA8bit_TB;
  // Your inputs
  reg [7:0] a;
  reg [7:0] b;
  reg cin;
  
  // Your outputs
  wire [7:0] sum;
  wire cout;
  // Clock
  integer ctr;

  RCA8bit adder(a, b, cin, sum, cout);
  initial begin
    #10 cin=0; a=0; b=0;
    #10 cin=0; a=1; b=0;
    #10 cin=1; a=0; b=14;
    #10 cin=1; a=45; b=74;
    #10 cin=0; a=198; b=54;
    #10 cin=0; a=249; b=7;
    #10 cin=1; a=156; b=121;
    #10 cin=1; a=123; b=177;
    #10 cin=0; a=255; b=255;
    #10 cin=1; a=255; b=255;
    #10 $stop;
  end

  initial begin
    $monitor("At time: %d: cin, a, b: %b %d %d; sum, cout: %d %b", $time, cin, a, b, sum, cout);
  end

endmodule
