module registers
(input clk, 
input wire[4:0] reg1, 		//read register 1
input wire[4:0] reg2, 		//read register 2
input wire[4:0] writeReg,		//write register
input wire[31:0] WriteData,   	//input from Data Memory
input wire RegWrite,		//signal
output reg[31:0] read1,
output reg[31:0] read2); 

reg[31:0] Registers[31:0]; //array of 32 registers, 32-bit each

initial begin
	Registers[0] <= 32'h00000;	//hardcoded values of the registers
	Registers[1] <= 32'h00001;
	Registers[2] <= 32'h00010;
	Registers[3] <= 32'h00011;
	Registers[4] <= 32'h00100;
	Registers[5] <= 32'h00101;
	Registers[6] <= 32'h00110;
	Registers[7] <= 32'h00111;
	Registers[8] <= 32'h01000;
	Registers[9] <= 32'h01001;
	Registers[10] <= 32'h01010;
	Registers[11] <= 32'h01011;
	Registers[12] <= 32'h01100;
	Registers[13] <= 32'h01101;
	Registers[14] <= 32'h01110;
	Registers[15] <= 32'h01111;
	Registers[16] <= 32'h10000;
	Registers[17] <= 32'h10001;
	Registers[18] <= 32'h10010;
	Registers[19] <= 32'h10011;
	Registers[20] <= 32'h10100;
	Registers[21] <= 32'h10101;
	Registers[22] <= 32'h10110;
	Registers[23] <= 32'h10111;
	Registers[24] <= 32'h11000;
	Registers[25] <= 32'h11001;
	Registers[26] <= 32'h11010;
	Registers[27] <= 32'h11011;
	Registers[28] <= 32'h11100;
	Registers[29] <= 32'h11101;
	Registers[30] <= 32'h11110;
	Registers[31] <= 32'h11111;
end 

always @(posedge clk) begin
	if (RegWrite == 1)			//store word in memory
	begin
		Registers[writeReg] = WriteData; 	//store value of WriteData into Registers[rd]
	end
	
 	if (RegWrite ==0) begin			//if the instruction is different from sw, WriteData is 0
		 Registers[0] = WriteData;
	end
	
	read1 = Registers[reg1];
	read2 = Registers[reg2];
end 

endmodule
