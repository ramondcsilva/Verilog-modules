module mux16for4(
	data0[3:0],data1[3:0],data2[3:0],data3[3:0],
	selector[3:0],
	y[3:0]
);

input data0,data1,data2,data3;
input selector;
output y;
reg y; 	//case sensitive
	
always@(selector or da or b or c or d){
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
