`include "FA1bit.v"
module RCA8bit(a, b, cin, sum, cout);
  input [7:0] a;
  input [7:0] b;
  input cin;
  output [7:0] sum;
  output cout;
  wire [6:0] c;

  FA1bit A1(a[0], b[0], cin, sum[0], c[0]);
  FA1bit A2(a[1], b[1], c[0], sum[1], c[1]);
  FA1bit A3(a[2], b[2], c[1], sum[2], c[2]);
  FA1bit A4(a[3], b[3], c[2], sum[3], c[3]);
  FA1bit A5(a[4], b[4], c[3], sum[4], c[4]);
  FA1bit A6(a[5], b[5], c[4], sum[5], c[5]);
  FA1bit A7(a[6], b[6], c[5], sum[6], c[6]);
  FA1bit A8(a[7], b[7], c[6], sum[7], cout);

endmodule
