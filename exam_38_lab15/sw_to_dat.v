`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:14:53 01/13/2017 
// Design Name: 
// Module Name:    sw_to_dat 
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
module sw_to_dat(
    input [6:0] SW,
    output wire [15:0] dat
    );

assign dat = {9'b000000000, SW};
endmodule
