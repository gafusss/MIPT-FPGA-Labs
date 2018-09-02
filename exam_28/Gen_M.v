`timescale 1ns / 1ps

`include "CONST.v"



module Gen_M(
    input clk,
    input ce5ms,
    input [`m_X-1:0] x,
    output wire s
    );

reg [`m_X:0] cb_ce5ms = 0;

wire tc = (cb_ce5ms == ((x<<1) - 1));
assign s = (cb_ce5ms < x);	

always @ (posedge clk) if (ce5ms) begin
	cb_ce5ms <= (tc) ? 0 : cb_ce5ms + 1;
end

endmodule
