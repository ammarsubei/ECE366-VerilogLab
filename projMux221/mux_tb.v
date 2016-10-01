`include "mux.v"
module MUX_TB;
	// Your inputs
	reg in0, in1, sel;
	// Your outputs
	wire out;
	// Clock
	integer ctr;

	MUX test(in0, in1, sel, out);
	initial begin
		for(ctr = 0; ctr < 8; ctr = ctr + 1)
		#10 {in0, in1, sel} = ctr;
		#10 $stop;
	end

	initial begin
		$monitor("At time: %d: in0, in1, sel: %b%b%b; out:
		%b", $time,in0, in1, sel, out);
	end

endmodule
