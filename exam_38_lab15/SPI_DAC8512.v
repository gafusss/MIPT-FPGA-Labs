`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:19:44 01/13/2017 
// Design Name: 
// Module Name:    SPI_DAC8512 
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
module SPI_DAC8512 ( 						output wire SDAT, 			//���������������� ������.
							input st, 			output wire SCLK, 			//������ �������������.
							input clk, 			output reg NCS=1, 			//����� ���������.
							input [11:0] DI, 	output reg NLD=1, 			//����������� ��������.
													output wire ce, 
													output reg[3:0]cb_bit=0 ); //������� ���.
parameter Tsclk = 80 ; 															//Tsclk=Tcl+Tch=40+40 ns
reg [1:0]cb_ce=0; 																//������� ������
assign ce = (cb_ce==(Tsclk/`Tclk)-1) ;										//(cb_ce==80/20-1=3)
wire Q=cb_ce[1]; 																	//������� ��� �������� ������
assign SCLK= Q | NCS ;
reg [11:0]sr_dat=0; 																//������� ������ ������
assign SDAT = sr_dat[11]; 														//������� ��� �������� ������
always @ (posedge clk) begin
	cb_ce <= (st | ce)? 0 : cb_ce+1 ;
	NCS <= st? 0 : ((cb_bit==11) & ce)? 1 : NCS ;
	cb_bit <= st? 0 : (!NCS & ce)? cb_bit+1 : cb_bit ;
	sr_dat <= st? DI : (ce & !NCS)? sr_dat<<1 : sr_dat ;
	NLD <= st? 1 : ce? !(cb_bit==11) : NLD ;
end
endmodule
