`include "four.v"
module Testbench4Four;
reg In1,In2,In3;
wire out1,out2;
integer ctr;
FOUR UUT(In1,In2,In3,out1,out2);
//// Comment : FOUR : Name of module
//// UUT : Name of module instance
initial begin
for(ctr=0;ctr<10;ctr=ctr+1)
	#10 {In1,In2,In3}=ctr;
#10 $stop;
end
initial begin
$monitor("At time : %d:In1,In2,In3: %b%b%b; out: %b,%b",$time,In1,In2,In3,out1,out2);
end
endmodule
