module im(clk, address, instr);

input clk;
input wire[31:0] address;
output reg[31:0][31:0] instr;		//2d array of type [address][location]
	
reg [31:0] location; 

initial begin
	if (address == 4'b0000) location = 4'b0001;	//hardcoded values of location
	else if (address == 4'b0001) location = 4'b0010;
	else if (address == 4'b0010) location = 4'b0011;
end

always @(posedge clk)
begin	
	if (address ==4'b0000)	begin		//temp[32'h0000][32'h0001] = 32'h0010;
		instr = 4'b0010;
	end
	else if (address == 4'b0001) begin	//temp[32'h0001][32'h0010] = 32'h0011;
		instr = 4'b0011;
	end
	if (address == 4'b0010)begin		//temp[32'h0010][32'h0011] = 32'h0100;
		instr =4'b0100;
	end	
end

endmodule
