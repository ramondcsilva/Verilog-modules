//Autorship: Ramon de Cerqueira Silva
//Description: 9 decimal counter with enable, reset, and up/down count.
module test(y,clear,enable,up_down,clock);

input clock,enable,clear,up_down;
output [3:0]y;
reg [3:0]y;

always@(posedge clock)
begin
if(clear)
  y = 4'b0;
else if(enable)
	if(up_down & y == 4'b1001)
		y = 4'b0;	
	else if(up_down)	
		y <= y + 1;	
	else if(!up_down & y == 4'b0)
		y = 4'b1001;	
	else if(!up_down)
		y <= y - 1;	
end

endmodule
