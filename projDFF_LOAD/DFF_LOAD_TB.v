`include "DFF_S_R.v"
module synDFF_LOAD_TB;
  reg set, reset, d, load;
  wire q;
  // Clock
  reg clock;

  synDFF_LOAD dff(set, reset, clock, q, d, load);

  initial begin
    clock = 1;       
    set   = 0;       
    reset = 0;
    d     = 0; 
    load  = 0;    
    #20  set = 1;   
    #20  set = 0;  
    reset = 1; 
    #20  set = 1;
    #20  d = 1;
    #20  load = 1;
    #20  set = 0;
    #20  reset = 0;
    #20  d = 0;
    #20  set = 1;
    #20  load = 0;
    #10 $stop;
  end

  initial begin
    $monitor("At time: %g: clock: %b; load: %b; set, reset, d: %b %b %b; q: %b", $time, clock, load, set, reset, d, q);
  end

  always begin
    #10 clock = ~clock; // 20ns clock
  end

endmodule
