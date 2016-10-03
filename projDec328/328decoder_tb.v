`include "328decoder.v"
module DEC328_TB;
  // Your inputs
  reg [2:0] in;
  reg enable;
  // Your outputs
  wire [7:0] out;

  // Clock
  integer ctr;

  DEC328 test(in, enable, out);
  initial begin
    for(ctr = 0; ctr < 16; ctr = ctr + 1)
      #10 {in[0], in[1], in[2], enable} = ctr;
      #10 $stop;
    end

  initial begin
    $monitor("At time: %d: in0, in1, in2, enable: %b%b%b%b; out0, out1, out2, out3, out4, out5, out6, out7:
    %b%b%b%b%b%b%b%b", $time, in[0], in[1], in[2], enable, out[0], out[1], out[2], out[3], out[4], out[5], out[6], out[7]);
  end

endmodule
