`include "224decoder.v"
module DEC224_TB;
  // Your inputs
  reg [1:0] in;
  reg enable;
  // Your outputs
  wire [3:0] out;

  // Clock
  integer ctr;

  DEC224 test(in, enable, out);
  initial begin
    for(ctr = 0; ctr < 8; ctr = ctr + 1)
      #10 {in[0], in[1], enable} = ctr;
      #10 $stop;
    end

  initial begin
    $monitor("At time: %d: in0, in1, enable: %b%b%b; out0, out1, out2, out3:
    %b%b%b%b", $time, in[0], in[1], enable, out[0], out[1], out[2], out[3]);
  end

endmodule
