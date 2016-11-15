`include "ALU1bit.v"
module ALU4bit(clock, inA, inB, Cin, binv, less, op, Cout, result);

  input clock, Cin, binv, less;
  input [3:0] inA;
  input [3:0] inB;
  input [2:0] op;
  
  output wire [3:0] result;
  output wire Cout;

  reg newBinv;
  wire [2:0] C;
  
  initial begin
  if(op == 3'b100)
    newBinv = ~binv;
  else
    newBinv = binv;
  end

  ALU1bit alu1(clock, inA[0], inB[0], Cin, newBinv, less, {op[1],op[0]}, C[0], result[0]);
  ALU1bit alu2(clock, inA[1], inB[1], C[0], newBinv, result[0], {op[1],op[0]}, C[1], result[1]);
  ALU1bit alu3(clock, inA[2], inB[2], C[1], newBinv, result[1], {op[1],op[0]}, C[2], result[2]);
  ALU1bit alu4(clock, inA[3], inB[3], C[2], newBinv, result[2], {op[1],op[0]}, Cout, result[3]);

endmodule
