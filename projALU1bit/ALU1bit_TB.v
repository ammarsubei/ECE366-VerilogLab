`include "ALU1bit.v"

module ALU1bit_TB;

  reg clock, inA, inB, Cin, binv, less;
  reg [1:0] op;
  
  wire Cout, result;

  ALU1bit alu(clock, inA, inB, Cin, binv, less, op, Cout, result);

  initial begin
    clock = 1;       
    op = 2'b00;
    Cin = 0;
    binv = 0;
    less = 1;
    inA = 1;
    inB = 0;    
    #20 op = 2'b01;
    inA = 0;
    #20 op = 2'b11;
    #20 less = 0;
    #20 inA = 1;
    op = 2'b01;
    #20 inB = 1;
    op = 2'b11;
    #20 inA = 0;
    #20 op = 2'b10;
    #20 inA = 1;
    #30
    #10 $stop;
  end

  initial begin
    $monitor("At time: %g: clock: %b; opCode: %b; Cin, binv, less: %b %b %b; inA, inB: %b %b; result: %b; Cout: %b", $time, clock, op, Cin, binv, less, inA, inB, result, Cout);
  end
  

  always begin
    #10 clock = ~clock; // 20ns clock
  end

endmodule
