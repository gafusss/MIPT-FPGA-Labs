`timescale 1ns / 1ps


module Gen_5ms(
    input clk,
    output wire st
    );

reg [17:0]cb_st = 0;

assign st = (cb_st == (250000 - 1));

always @(posedge clk) begin
	cb_st <= st? 0 : cb_st + 1;
end

endmodule
