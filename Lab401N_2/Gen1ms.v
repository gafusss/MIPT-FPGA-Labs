`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:39:09 08/29/2007 
// Design Name: 
// Module Name:    Gen1ms 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Gen1ms(
    input clk,
    output wire ce_1ms
    );
parameter Fclk = 50000000;
parameter F1kHz = 1000;
reg [16:0] ct_ms = 0;
assign ce_1ms = (ct_ms == 0);
always @ (posedge clk) begin
ct_ms <= ce_1ms?((Fclk/F1kHz) - 1):ct_ms - 1;
end
endmodule
