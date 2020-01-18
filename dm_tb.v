`include "dm.v"

module dm_tb;

reg clk;
reg[31:0] result;
reg[31:0] WriteData;
reg zero; 
reg MemWrite; 
reg MemRead;
wire[31:0] ReadData;

dm trial (.clk(clk), .result(result), .WriteData(WriteData), .zero(zero), .MemWrite(MemWrite), .MemRead(MemRead), .ReadData(ReadData));

initial clk = 0;

initial begin
	$dumpfile("dm.vcd");	
	$dumpvars(0, dm_tb);
	
	result = 4'b0000;
	WriteData = 0;
	zero = 0;
	MemWrite = 0;
	MemRead = 0;
	#10;
	
	result = 4'b0001;
	WriteData = 0;
	zero = 0;
	MemWrite = 0;
	MemRead = 1;
	#10;
	
	result = 4'b0010;
	WriteData = 0;
	zero = 0;
	MemWrite = 1;
	MemRead = 0;
	#10;

	result = 4'b0011;
	WriteData = 0;
	zero = 0;
	MemWrite = 1;
	MemRead = 1;
	#10;

	result = 4'b0100;
	WriteData = 1;
	zero = 0;
	MemWrite = 0;
	MemRead = 0;
	#10;

	result = 4'b0101;
	WriteData =1;
	zero = 0;
	MemWrite = 0;
	MemRead = 1;
	#10;

	result = 4'b0110;
	WriteData = 1;
	zero = 0;
	MemWrite = 1;
	MemRead = 0;
	#10;
	
	result = 4'b0111;
	WriteData = 1;
	zero = 0;
	MemWrite = 1;
	MemRead = 1;
	#10;
end

always 
 #5 clk = !clk;

initial 
 #100 $finish;
endmodule
