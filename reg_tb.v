`include "reg.v"

module reg_tb;

reg clk;
reg[4:0] reg1;
reg[4:0] reg2; 
reg[4:0] writeReg;
reg[31:0] WriteData;   //input from Data Memory
reg RegWrite;
wire[31:0] read1;
wire[31:0] read2;

registers trial(.clk(clk), .reg1(reg1), .reg2(reg2), .writeReg(writeReg), .WriteData(WriteData), .RegWrite(RegWrite), .read1(read1), .read2(read2));

initial clk = 0;

initial begin
	$dumpfile("reg.vcd");	
	$dumpvars(0, reg_tb);
	
	RegWrite = 1; 	
	reg1 = 00000; 
	reg2 = 00000; 
	writeReg = 00001; 
	WriteData = 32'h11100000; 
	#20;
	
	RegWrite = 1; 	
	reg1 = 1; 
	reg2 = 2; 
	writeReg = 3; 
	WriteData = 32'h10000000; 
	#20;

	RegWrite = 1; 	
	reg1 = 2; 
	reg2 = 4; 
	writeReg = 5; 
	WriteData = 32'h00000010; 
	#20;

	RegWrite = 0;  
	reg1 = 1; 
	reg2 = 10; 
	WriteData = 32'h00000001; 
	#20;
end

always 
#5 clk = !clk;

initial 
 #100 $finish;
endmodule


