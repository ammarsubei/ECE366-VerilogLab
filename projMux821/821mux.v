`include "421mux.v"
module MUX821(in, sel, out);
  input 	[7:0] in;
  input 	[2:0] sel;
  wire 		[2:0] mux;
  output 	out;

  MUX421 mux1(in[7:4], sel[2:1], mux[0]);
  MUX421 mux2(in[3:0], sel[2:1], mux[1]);
  MUX	 mux3(mux[0], mux[1], sel[0], out);
endmodule
