module GATES(in1, in2, nandOut, andOut, orOut, xorOut);
	input in1, in2;
	output nandOut, andOut, orOut, xorOut;
	assign nandOut 	= ~(in1 & in2);
	assign andOut 	= (in1 & in2);
	assign orOut 	= (in1 | in2);
	assign xorOut 	= (in1 ^ in2);
endmodule
