module mux16for4(a0,b0,c0,d0,a1,b1,c1,d1,a2,b2,c2,d2,a3,b3,c3,d3,selector,y0,y1,y2,y3);

input a0,b0,c0,d0;
input a1,b1,c1,d1;
input a2,b2,c2,d2;
input a3,b3,c3,d3;
input [1:0]selector;
output y0,y1,y2,y3;
reg y0,y1,y2,y3; 	//case sensitive
	
always@(selector or a0 or a1 or a2 or a3 or b0 or b1 or b2 or b3 or c0 or c1 or c2 or c3 or d0 or d1 or d2 or d3)
begin
	case(selector)
		2'b00:y0 = a0;
		      y1 = b0;	
		      y2 = c0;
		      y3 = d0;
		2'b01:y0 = a1;
		      y1 = b1;	
		      y2 = c1;
		      y3 = d1;
		2'b10:y0 = a2;
		      y1 = b1;	
		      y2 = c1;
		      y3 = d1;
		default
		      y0 = a3;
		      y1 = b3;	
		      y2 = c3;
		      y3 = d3;
	endcase
end

endmodule
