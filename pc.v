module pc (clk, value, next_value);

input clk;
input wire[31:0] value;
output reg[31:0] next_value;

wire[31:0] plus4;
assign plus4 = value + 4;

always @(posedge clk)

begin
	assign next_value = plus4;
end

endmodule


