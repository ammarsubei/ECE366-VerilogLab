`include "DFF_S_R.v"
module synDFF_TB;
  reg set, reset, d;
  wire q;
  // Clock
  reg clock;

  synDFF dff(set, reset, clock, q, d);

  initial begin
    clock = 0;       
    set   = 0;       
    reset = 0;
    d     = 0;     
    #20  set = 1;   
    #20  set = 0;  
    reset = 1; 
    #20  set = 1;
    #20  d = 1;
    #20  set = 0;
    #20  reset = 0;
    #20  d = 0;
    #10 $stop;
  end

  initial begin
    $monitor("At time: %g: clock: %b set, reset, d: %b %b %b; q: %b", $time, clock, set, reset, d, q);
  end

  always begin
    #10 clock = ~clock; // 20ns clock
  end

endmodule
