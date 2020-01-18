`include "im.v"

module im_tb;

reg clk;
reg [31:0] address;
wire [31:0][31:0] instr;

im trial(.clk(clk), .address(address), .instr(instr));


initial begin
	$dumpfile("im.vcd");	
	$dumpvars(0, im_tb);
end 


initial begin
	clk = 0;
	address = 4'b0000; 	
	#30;
	
	address = 4'b0001;
	#30;

	address =4'b0010;
	#30;

	address = 4'b0011;
	#30;

	address = 4'b0100;
	#30;
		
end

always 
#5 clk = !clk;

initial 
 #200 $finish;

endmodule


