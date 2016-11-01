`include "DFF_S_R.v"
`include "FA1bit.v"
module counterDFF(set, reset, clock, q);
  input set, reset, clock;
  output reg [3:0] q;

  always @ (posedge clock)
    begin
      if (set == 1 && reset == 0)
        q <= 15;
      
      else if (set == 0 && reset == 1)
        q <= 0;
      
      else
        q <= q + 1;	
    end
  
endmodule
