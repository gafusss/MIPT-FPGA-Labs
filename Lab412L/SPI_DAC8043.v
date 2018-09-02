`timescale 1ns / 1ps


`include "PARAMETERS.v"
module SPI_DAC8043( 							output wire SDAT, //���������������� ������.
							input st, 			output wire SCLK, //������ �������������.
							input clk, 			//output reg NCS=1, //����� ���������.
							input [11:0] DI, 	output reg NLD=1, //����������� ��������.
													output wire ce, //
													output reg[3:0]cb_bit=0 ); //������� ���.

//Tcl >= 120
//Tch >= 90
//		Tsclk > 210
//Tld >= 120

//Tds >= 40				����� ������� ������� � ������� �����
//Tdh >= 80				����� ������� �����. ����� � ������ �����. ����

//Tasb >= 0  			����� ������� ���������� ����� (� ��������� �������� ����) � ������� �������� (!NLD)													
													

//---
//Tcl = 140
//Tch = 100
//Tsclk = 240
//Tld = 140
//Tds �������������� ������������� ��� ����� ������� �� ���������� ������ SCLK (Tcl > Tds)
//Tdh �������������� ������������� ��� ����� ������� �� ���������� ������ SCLK (Tch > Tdh)


//Tst >= 2.89us = 2890ns

parameter Tcl = 140;
parameter Tch = 100;
parameter Tsclk = Tcl + Tch; //240

reg [11:0]sr_dat=0; //������� ������ ������
reg [3:0]cb_ce=0; //������� ������
reg NCS = 1; //!������� ���

assign ce = (cb_ce==(Tsclk/`Tclk)-1); // (cb_ce==240/20-1=11)
assign SCLK= (cb_ce > (Tcl/`Tclk)-1)&&(!NCS); //cb_ce > 7	//cb_ce[1] | NCS ; //������� ��� �������� ������. 40ns
assign SDAT = sr_dat[11]; //������� ��� �������� ������

always @ (posedge clk) begin
	cb_ce <= (st | ce)? 0 : cb_ce+1 ;
	NCS <= st? 0 : ((cb_bit==11) & ce)? 1 : NCS ; //����� �������� ������ � ����� �����
	cb_bit <= st? 0 : (!NCS & ce)? cb_bit+1 : cb_bit ;
	sr_dat <= st? DI : (ce & !NCS)? sr_dat<<1 : sr_dat ; //�� ��������� ����� �������� �������
	NLD <= st? 1 : ce? !(cb_bit==10) : NLD ; //����� �������� ������ � ����� ����� LD � 0 ��� �������� ������ ���������� �������� � ������� ���
end

endmodule
