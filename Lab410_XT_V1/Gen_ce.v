`timescale 1ns / 1ps


`include "CONST.v"
module Gen_ce (input clk, output wire ceo);
reg [8:0]cb_ce=0 ;
assign ceo=(cb_ce==`Fclk/`Fce) ;

always @ (posedge clk) begin
	cb_ce <= ceo? 1 : cb_ce+1 ;
end

endmodule