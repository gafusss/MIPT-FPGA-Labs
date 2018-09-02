`timescale 1ns / 1ps


`include "PARAMETERS.v"
module SPI_DAC8512 ( 						output wire SDAT, //���������������� ������.
							input st, 			output wire SCLK, //������ �������������.
							input clk, 			output reg NCS=1, //����� ���������.
							input [11:0] DI, 	output reg NLD=1, //����������� ��������.
													output wire ce, //
													output reg[3:0]cb_bit=0 ); //������� ���.
parameter Tsclk = 80 ; //Tsclk=Tcl+Tch=40+40 ns

reg [11:0]sr_dat=0; //������� ������ ������
reg [1:0]cb_ce=0; //������� ������

assign ce = (cb_ce==(Tsclk/`Tclk)-1) ;// (cb_ce==80/20-1=3)
assign SCLK= cb_ce[1] | NCS ; //������� ��� �������� ������. 40ns
assign SDAT = sr_dat[11]; //������� ��� �������� ������

always @ (posedge clk) begin
	cb_ce <= (st | ce)? 0 : cb_ce+1 ;
	NCS <= st? 0 : ((cb_bit==11) & ce)? 1 : NCS ; //����� �������� ������ � ����� ����� Chip Select � 1
	cb_bit <= st? 0 : (!NCS & ce)? cb_bit+1 : cb_bit ;
	sr_dat <= st? DI : (ce & !NCS)? sr_dat<<1 : sr_dat ; //�� ��������� ����� �������� �������
	NLD <= st? 1 : ce? !(cb_bit==11) : NLD ; //����� �������� ������ � ����� ����� LD � 0 ��� �������� ������ ���������� �������� � ������� ���
end

endmodule