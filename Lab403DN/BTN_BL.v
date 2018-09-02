`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:06:16 08/29/2007 
// Design Name: 
// Module Name:    BTN_BL 
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
module BTN_BL( input btn, output st,//Tst=Tclk
input clk,
input ce); // ce1ms
reg q1=0, q2=0 ;
assign st= q1 & !q2 & ce ;
always @ (posedge clk) begin
	q1 <= ce? btn : q1 ; q2 <= ce? q1 : q2 ;
end
endmodule