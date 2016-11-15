module ALU1bit(clock, inA, inB, Cin, binv, less, op, result);

  input clock, inA, inB, Cin, binv, less;
  input [1:0] op;
  
  output reg result;

  reg newB, Cout;

  always @ (posedge clock)
  begin
    if(binv)
      newB = ~inB;
    else
      newB = inB;

    if(op == 2'b00)
      result = inA & newB;
    else if(op == 2'b01)
      result = inA | newB;
    else if(op == 2'b10)
      result = inA ^ newB ^ Cin;
    else if(op == 2'b11) begin
      if(inA == newB)
        result = less;
      else
        result = inA < newB;
    end
  end
endmodule
