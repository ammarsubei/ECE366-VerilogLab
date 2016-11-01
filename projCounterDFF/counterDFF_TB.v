`include "counterDFF.v"
module counterDFF_TB;
  reg set, reset;
  wire [3:0] q;
  // Clock
  reg clock;

  counterDFF dff(set, reset, clock, q);

  initial begin
    clock = 0;       
    set   = 0;       
    reset = 0;    
    #20 set = 1;
    #20 set = 0;
    #20 reset = 1;
    #20 reset = 0;
    #165
    #10 $stop;
  end

  initial begin
    $monitor("At time: %g: clock: %b set, reset: %b %b; q: %d", $time, clock, set, reset, q);
  end

  always begin
    #5 clock = ~clock; // 20ns clock
  end

endmodule
