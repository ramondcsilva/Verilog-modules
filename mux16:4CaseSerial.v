module mux16for4(data0,data1,data2,data3,selector,y);

input [3:0]data0,[3:0]data1,[3:0]data2,[3:0]data3;
input [1:0]selector;
output [3:0]y;
reg [3:0]y; 	//case sensitive
	
always@(selector or data0 or data1 or data2 or data3)
begin
	case(selector)
		2'b00:	y = data0;
		2'b01:	y = data1;
		2'b10:	y = data2;
		default
				y = data3;
	endcase
end

endmodule
