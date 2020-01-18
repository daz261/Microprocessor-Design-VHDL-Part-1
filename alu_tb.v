`include "alu.v"

module alu_tb;

reg clk;
reg[31:0] read1;
reg[31:0] read2;
reg[3:0] operation;
wire[31:0] result;
wire zero;

alu trial(.clk(clk), .read1(read1), .read2(read2), .operation(operation), .result(result));

initial clk = 0;


initial begin
	$dumpfile("alu.vcd");	
	$dumpvars(0, alu_tb);
	
	read1 = 4'b01;
	read2 = 4'b11;
	operation =4'b0000;
	#30;
	
	read1 = 4'b01;
	read2 = 4'b11;
	operation = 4'b0001;
	#30;
	
	read1 = 4'b01;
	read2 = 4'b11;
	operation = 4'b0010;
	#30

	read1 = 4'b01;
	read2 = 4'b11;
	operation = 4'b0110;
	#30;
	
	read1 = 4'b01;
	read2 = 4'b11;
	operation = 4'b0111;
	#30;
	
	read1 = 8'b01;
	read2 = 8'b11;
	operation = 8'b1100;
	#30;

end

always 
 #5 clk = !clk;

initial 
 #200 $finish;
endmodule
