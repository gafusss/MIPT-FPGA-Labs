`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:07:08 10/13/2016 
// Design Name: 
// Module Name:    CONST_XY 
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
//`define m 4
`define m 15
`define Fclk 50000000
`define Fce 100000
`define Nce `Fclk/`Fce
`define m_NFce 17
`define m_Y `m+1
`define m_X `m+1
`define m_M `m_X + `m_NFce //Число разрядов произведения X*NFce
`define m_S `m_Y //Число разрядов делителя
