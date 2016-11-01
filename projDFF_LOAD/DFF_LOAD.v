module synDFF_LOAD(set, reset, clock, q, d, load);
  input d, clock, set, reset, load;
  output q;
  reg q;

  always @ (posedge clock)
    begin
      if (load == 0) begin
        if (set == 1 && reset == 0)
          q <= 1'b1;
        else if (set == 0 && reset == 1)
          q <= 1'b0;
        else
          q <= d;
      end

      else 
        q <= d;
    end
endmodule
