//Autorship: Ramon de Cerqueira Silva
//Description: Simple 4 bit counter with enable, reset.

module count4bits(y,clear,enable,clock);

input clock,enable,clear;
output [3:0]y;
reg [3:0]y;

always@(posedge clock)
if(clear)
begin
  y = 4'b0;
end  
else if(enable)
begin  
  y <= y + 1;
end  

endmodule
