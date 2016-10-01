module MUX(in0, in1, select, out);
  input in0, in1 ,select;
  output out;
  reg out;

  always @ (select or in0 or in1)
  begin
    if (select) 
      out = in0;
    else
      out = in1;
  end

endmodule
