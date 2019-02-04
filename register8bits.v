module register8bits(clk, reset, din, dout);
	input reset;
	input clk;
	input [7:0]din;
	output [7:0]dout;
	reg [7:0]dout;
	
	always @(posedge clk)
		if(!reset)
			dout = din;
		else	
			dout = 0;
endmodule	
