module mux16for4(
	a0,b0,c0,d0,
	a1,b1,c1,d1,
	a2,b2,c2,d2,
	a3,b3,c3,d3,
	selector,
	y0,y1,y2,y3
);

input a0,b0,c0,d0;
input a1,b1,c1,d1;
input a2,b2,c2,d2;
input a3,b3,c3,d3;
input selector;
output y0,y1,y2,y3;
reg y0,y1,y2,y3; 	//case sensitive
	
always@(selector or a0 or a1 or a2 ou a3 or b0 or b1 or b2 ou b3 or c0 or c1 or c2 ou c3 or d0 or d1 or d2 ou d3){
	begin
		case(selector)
			2'b00:y0 = a0|b0|c0|d0;
			2'b01:y1 = a1|b1|c1|d1;
			2'b10:y2 = a2|b2|c2|d2;
			defaut
				  y3 = a3|b3|c3|d3;
		endcase
	end
}

endmodule
