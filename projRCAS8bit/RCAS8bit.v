`include "FA1bit.v"
module RCAS8bit(a, b, add_sub, sum, cout, OV);
  input [7:0] a;
  input [7:0] b;
  // The operation: 0 => Add, 1=>Subtract.
  input add_sub;
  output [7:0] sum;
  output cout;
  // The 1-bit overflow status.
  output OV;	
  
  wire [7:0] c;
  // The xor'd result of b and Op
  wire [7:0]B;
   
  assign B[0] = b[0] ^ add_sub;
  assign B[1] = b[1] ^ add_sub;
  assign B[2] = b[2] ^ add_sub;
  assign B[3] = b[3] ^ add_sub;
  assign B[4] = b[4] ^ add_sub;
  assign B[5] = b[5] ^ add_sub;
  assign B[6] = b[6] ^ add_sub;
  assign B[7] = b[7] ^ add_sub;
  
  FA1bit A1(a[0], B[0], add_sub, sum[0], c[0]);
  FA1bit A2(a[1], B[1], c[0], sum[1], c[1]);
  FA1bit A3(a[2], B[2], c[1], sum[2], c[2]);
  FA1bit A4(a[3], B[3], c[2], sum[3], c[3]);
  FA1bit A5(a[4], B[4], c[3], sum[4], c[4]);
  FA1bit A6(a[5], B[5], c[4], sum[5], c[5]);
  FA1bit A7(a[6], B[6], c[5], sum[6], c[6]);
  FA1bit A8(a[7], B[7], c[6], sum[7], c[7]);    // Most significant bit.

  assign cout = c[7] ^ add_sub;
  assign OV = c[7] ^ c[6];

endmodule
