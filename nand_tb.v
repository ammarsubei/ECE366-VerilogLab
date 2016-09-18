`include "nand.v"
module TestBench_NAND;
	reg in1, in2;
	wire out;
	integer ctr;
	NAND N1(in1, in2, out);
	
	initial begin

		for(ctr = 0; ctr < 10; ctr = ctr + 1)
		#10 {in1, in2} = ctr;
		#10 $stop;
	end

	initial begin
		$monitor("At time : %d: in1, in2: %b%b; out:
		%b", $time, in1, in2, out);
	end
endmodule
