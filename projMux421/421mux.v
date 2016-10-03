`include "mux.v"
module MUX421(in, sel, out);
  input 	[3:0] in;
  input 	[1:0] sel;
  wire 		[1:0] mux;
  output 	out;

  MUX mux1(in[0], in[1], sel[1], mux[0]);
  MUX mux2(in[2], in[3], sel[1], mux[1]);
  MUX mux3(mux[0], mux[1], sel[0], out);
endmodule
