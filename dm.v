module dm(
input clk,
input wire[31:0] result,
input wire[31:0] WriteData,
input wire zero, 
input wire MemWrite, 
input wire MemRead,
output reg[31:0] ReadData);

//1024 words of 32-bit memory
reg[31:0] mem[0:1023]; 
integer i;

initial begin		
//assign values to memory bits, in ascendant order, from 0 to 1023
	for (i=0; i<1023; i=i+1)
		mem[i] = i;
end

always @(posedge clk) begin
	if (MemWrite == 1) begin		//sw
		mem[result]= WriteData;		//write value of WriteData into mem[result]
	end
	if (MemRead == 1) begin			//lw
		ReadData = mem[result]; 	//write value of mem[result] into reg ReadData - the output
	end
end

endmodule
