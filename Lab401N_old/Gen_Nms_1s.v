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
    output reg CEO = 0
    );
parameter N = 15;

reg [9:0] q = 0;
wire TC;

assign TC = Tmod?(q == N-1):(q == 1000-1);

always @ (negedge q[9]) begin
CEO <= 1;
end

always @ (posedge ce) begin
q <= TC?0:q+1;
end

always @ (posedge clk) if (CEO) begin
CEO <= 0;
end

endmodule
