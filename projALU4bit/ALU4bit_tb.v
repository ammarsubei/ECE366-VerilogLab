`include "ALU4bit.v"
module ALU4bit_TB;

  reg clock, Cin, binv, less;
  reg [3:0] inA;
  reg [3:0] inB;
  reg [2:0] op;
  
  wire [3:0] result;
  wire Cout;

  ALU4bit alu(clock, inA, inB, Cin, binv, less, op, Cout, result);

  initial begin
    clock = 1;       
    op = 3'b000;
    Cin = 0;
    binv = 0;
    less = 0;
    inA = 4'b0011;
    inB = 4'b1010;    
    #20 op = 3'b001;
    inA = 4'b0000;
    #20 inB = 4'b1111;
    #20 op = 3'b011;
    inB = 4'b0001;
    inA = 4'b0011;
    #20 inA = 4'b0000;
    #20 op = 3'b010;
    #20 inA = 4'b1101;
    #20 inB = 4'b1001;
    #20 op = 3'b100;
    #20 inA = 4'b1011;
    #20 inB = 4'b0001;
    #20 Cin = 1;
    binv = 1;
    less = 1;
    op = 3'b010;
    #20 
    #30
    #10 $stop;
  end

  initial begin
    $monitor("At time: %g: clock: %b; Cin, binv, less: %b %b %b; opCode: %b; inA, inB: %d %d; result: %d; Cout: %b", $time, clock, Cin, binv, less, op, inA, inB, result, Cout);
  end
  

  always begin
    #10 clock = ~clock; // 20ns clock
  end

endmodule
