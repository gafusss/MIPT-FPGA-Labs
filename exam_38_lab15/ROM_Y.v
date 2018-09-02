`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:41:47 01/13/2017 
// Design Name: 
// Module Name:    ROM_Y 
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
`include "PARAMETERS.v"
module ROM_Y ( input [4:0]adr, output wire [11:0] DO);
reg[11:0] MEM [`NP/4:0] ;
assign DO = MEM [adr] ;
initial 																//Инициализация ПЗУ из файла ROM_Y_A1800_NP72.txt
$readmemh("ROM_Y_A1800_NP72", MEM, 0, `NP/4);
endmodule
