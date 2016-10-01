`include "821mux.v"
module MUX821_TB;
	// Your inputs
	reg [7:0] in;
	reg [2:0] sel;
	// Your outputs
	reg out;

	// Clock
	integer ctr;

	MUX821 test(in, sel, out);
	initial begin
		for(ctr = 0; ctr < 2048; ctr = ctr + 1)
		#10 {in[0], in[1], in[2], in[3], in[4], in[5], in[6], in[7], sel[0], sel[1], sel[2]} = ctr;
		#10 $stop;
	end

	initial begin
		$monitor("At time: %d: in7, in6, in5, in4, in3, in2, in1, in0, sel2, sel1, sel0: %b%b%b%b%b%b%b%b %b%b%b; out:
		%b", $time, in[7], in[6], in[5], in[4], in[3], in[2], in[1], in[0], sel[2], sel[1], sel[0], out);
	end

endmodule
