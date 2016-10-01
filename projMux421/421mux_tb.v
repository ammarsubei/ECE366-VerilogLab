`include "421mux.v"
module MUX421_TB;
	// Your inputs
	reg [3:0] in;
	reg [1:0] sel;
	// Your outputs
	reg out;

	// Clock
	integer ctr;

	MUX421 test(in, sel, out);
	initial begin
		for(ctr = 0; ctr < 64; ctr = ctr + 1)
		#10 {in[0], in[1], in[2], in[3], sel[0], sel[1]} = ctr;
		#10 $stop;
	end

	initial begin
		$monitor("At time: %d: in0, in1, in2, in3, sel0, sel1: %b%b%b%b%b%b; out:
		%b", $time, in[0], in[1], in[2], in[3], sel[0], sel[1], out);
	end

endmodule
