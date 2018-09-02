`timescale 1ns / 1ps



module BTN_BL( input BTN, output wire st,
					input clk);

reg [1:0] Q =0 ;


reg [15:0]cb_ce = 0;
wire ce = (cb_ce == (50000 - 1)); //1ms
always @ (posedge clk) begin
	cb_ce <= ce ? 0 : cb_ce + 1;
end


assign st= Q[0] & !Q[1] & ce ;

always @ (posedge clk) if (ce) begin
	Q <= Q<<1 | BTN ;
end

endmodule