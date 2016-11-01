module synDFF(set, reset, clock, q, d);
  input d, clock, set, reset;
  output q;
  reg q;

  always @ (posedge clock)
    begin
      if (set == 1 && reset == 0)
        q <= 1'b1;
      
      else if (set == 0 && reset == 1)
        q <= 1'b0;
      
      else
        q <= d;	
    end
endmodule
