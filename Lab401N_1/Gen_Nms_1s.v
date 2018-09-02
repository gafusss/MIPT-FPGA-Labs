`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:52:37 08/29/2007 
// Design Name: 
// Module Name:    Gen_Nms_1s 
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
module Gen_Nms_1s(
    input clk,
    input ce,
    input Tmod,
    output wire CEO
    );
parameter N = 15;

reg [9:0] q = 2;
wire TC;
wire [9:0] Nms = Tmod ? N : 1000;
assign CEO = (q == 1);

always @ (posedge clk) begin
q <= CEO ? Nms : ce? q - 1 : q;
end

endmodule
