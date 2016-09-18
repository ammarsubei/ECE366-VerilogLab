`include "srLatch.v"
module TestBench_SR_Latch;
	reg inA, inB;
	wire outX,outY;
	integer ctr;
	SR_LATCH test(inA, inB, outX, outY);

	initial begin
		for(ctr = 0; ctr < 10; ctr = ctr + 1)
		#10 {inA, inB}=ctr;
		#10 $stop;
	end

	initial begin
		$monitor("At time : %d: inA, inB: %b%b; out:
		%b,%b", $time,inA, inB, outX, outY);
	end

endmodule
