module DEC224(in, enable, out);
  input 	[1:0] in;
  input  	enable; 
  output 	[3:0] out; 
  wire 		[3:0] out; 
  
  assign out = (enable) ? (1 << in) : 4'b0;
  
endmodule
