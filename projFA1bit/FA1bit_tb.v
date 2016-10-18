`include "FA1bit.v"
module FA1bit_TB;
  // Your inputs
  reg a, b, cin;
  // Your outputs
  wire sum, cout;
  // Clock
  integer ctr;

  FA1bit adder(cin, a, b, sum, cout);
  initial begin
    for(ctr = 0; ctr < 8; ctr = ctr + 1)
    #10 {cin, a, b} = ctr;
    #10 $stop;
  end

  initial begin
    $monitor("At time: %d: cin, a, b: %b%b%b; sum, cout: %b%b", $time, cin, a, b, sum, cout);
  end

endmodule
