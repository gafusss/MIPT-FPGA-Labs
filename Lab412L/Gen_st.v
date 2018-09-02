`timescale 1ns / 1ps


`include "PARAMETERS.v"
module Gen_st(
    input clk,
    output st
    );

//Tst = 2900 = 145 Tclk
reg [7:0]cb_st = 0;

assign st = (cb_st == ((`Tst/`Tclk) - 1));

always @(posedge clk) begin
	cb_st <= st? 0 : cb_st + 1;
end

endmodule
