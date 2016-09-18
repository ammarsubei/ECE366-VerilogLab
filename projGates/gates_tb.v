`include "gates.v"
module TestBench_GATES;
	reg in1, in2;
	wire nandOut, andOut, orOut, xorOut;
	integer ctr;
	GATES test(in1, in2, nandOut, andOut, orOut, xorOut);
	
	initial begin

		for(ctr = 0; ctr < 10; ctr = ctr + 1)
		#10 {in1, in2} = ctr;
		#10 $stop;
	end

	initial begin
		$monitor("At time : %d: in1, in2: %b%b; out:
		%b%b%b%b", $time, in1, in2, nandOut, andOut, orOut, xorOut);
	end
endmodule
