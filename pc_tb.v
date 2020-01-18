`include "pc.v"

module pc_tb;

reg[31:0] value;
reg clk;
wire next_value;

pc trial(.clk(clk), .value(value));

initial begin
	$dumpfile("pc.vcd");	
	$dumpvars(0, pc_tb);
	
	clk = 0;
	value = 0; 
	#20;
	
	value = 2;
	#20;

	value = 4;
	#20;	
end

always
 #5 clk = !clk;

initial 
 #100 $finish;
endmodule


