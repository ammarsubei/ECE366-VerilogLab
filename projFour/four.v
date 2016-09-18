module FOUR(ina1, ina2, ina3, a, b);
 input ina1, ina2, ina3;
 output a, b;
 assign a = ina3|ina2;
 assign b = ina3|(~ina2&ina1);
endmodule
