module SR_LATCH(inA, inB, outX, outY);
	input inA, inB;
	output outX, outY;
	assign outX = ~(inA & outY);
	assign outY = ~(inB & outX);
endmodule
