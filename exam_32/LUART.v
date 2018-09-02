`timescale 1ns / 1ps


`define Fclk 50000000 //50MHz
//---PC UART (COM ����)----------------
`define UART_vel 115200 //115.2kBOD
`define UART_Nt `Fclk/`UART_vel //434
module UART_RX_TX( input clk, 		output wire TXD,
						input RXD,			 output reg[15:0] rd_adr=0,
						input [7:0]rd_dat, output reg[15:0] wr_adr=0,
												output reg [7:0] sr_dat_rx=0,
												output wire ce_wr_dat,
												output reg en_tx_bl=0,
												output wire COM_wr_reg,
												output wire COM_rd_reg);
reg [7:0]com=0 ; reg [7:0]rx_lbl=0 ;
assign COM_wr_reg = (com==8'h00) ; //������ � �������
//assign COM_wr_MEM = (com==8'h01) ; //������ � ������
assign COM_rd_reg = (com==8'h80) ; //������ ��������
//assign COM_rd_MEM = (com==8'h81) ; //������ ������
wire com_wr = COM_wr_reg ;//| COM_wr_MEM ; //������� ������
wire com_rd = COM_rd_reg ;//| COM_rd_MEM ; //������� ������
wire my_com = com_wr | com_rd ; //��� �������
//--------�������� ������ ����------------------------------
reg [11:0]cb_tact ; //������� ������������ ����� (����)
wire ce_tact = (cb_tact==`UART_Nt) ; //Tce_tact=1/UARTvel
wire ce_bit = (cb_tact==(`UART_Nt/2)); //�������� �����
reg [3:0]cb_bit_rx=0 ; //������� ��� � ����� UART
reg [7:0]cb_res=0 ; //������� �����
reg [7:0]cb_rx_byte=0 ; //������� �������� ����
reg tRXD=0, ttRXD=0, en_rx_byte=0, en_rx_bl=0 ;//en_sh_rx=0,
wire dRXD = !tRXD & ttRXD ; //"�����" �������� ������� RXD
wire ok_rx_byte = (ce_bit & (cb_bit_rx==9) & en_rx_byte & tRXD);//�������� ����� �����
wire start_rx = dRXD & !en_rx_byte ; //����� ������ ���������� �����
wire ok_rx_bl = (cb_res==10) & ce_tact;//�������� ����� ����� ���� (�� ����� � 10 ������ ����� �������)
wire start_rx_bl = start_rx & !en_rx_bl;//����� ������ ����� ����
wire en_sh_rx = (cb_bit_rx<9) & (cb_bit_rx>0);
always @ (posedge clk) begin
tRXD <= RXD ; ttRXD <= tRXD ;
cb_tact <= (ok_rx_bl & start_rx | ce_tact)? 1 : cb_tact+1;
en_rx_byte <= ((cb_bit_rx==9) & ce_bit)? 0 : (ce_bit & !tRXD)? 1 : en_rx_byte ;
cb_bit_rx <= (start_rx | ((cb_bit_rx==9) & ce_tact))? 0 : (ce_tact & en_rx_byte)? cb_bit_rx+1 : cb_bit_rx ;
sr_dat_rx <= start_rx? 0 : (ce_bit & en_sh_rx)? sr_dat_rx >>1 | tRXD<<7 : sr_dat_rx ;//in
cb_rx_byte <= ok_rx_bl? 0 : ok_rx_byte? cb_rx_byte+1 : cb_rx_byte ;
cb_res <= en_rx_byte? 0 : (ce_tact & en_rx_bl)? cb_res+1 : cb_res ;
en_rx_bl <= ok_rx_bl? 0 : start_rx_bl? 1 : en_rx_bl ;
end
//�������������� ���������� ������ 4-� ����
wire T_com = (cb_rx_byte==0) ; //1-� ���� �������
wire T_lbl = (cb_rx_byte==1) ; //2-� ���� ����� ����
wire T_Hadr =(cb_rx_byte==2) ; //3-� ���� ������� ���� ������
wire T_Ladr =(cb_rx_byte==3) ; //4-� ���� ������� ���� ������
assign ce_wr_dat = (cb_rx_byte>3) & ok_rx_byte & !(rx_lbl==0) & com_wr;
//�������� �������� �������
always @ (posedge clk) begin
com <= (T_com & ok_rx_byte) ? sr_dat_rx : com;
end
//�������� ��������� ����� ����� � ������
always @ (posedge clk) if (my_com) begin
rx_lbl <= (T_com & ok_rx_byte)? 0 : (T_lbl & ok_rx_byte)? sr_dat_rx : ce_wr_dat? rx_lbl-1 : rx_lbl ;
wr_adr[15:8] <= (T_Hadr & ok_rx_byte)? sr_dat_rx : wr_adr[15:8];
wr_adr[ 7:0] <= (T_Ladr & ok_rx_byte)? sr_dat_rx : ce_wr_dat? wr_adr[7:0]+1 : wr_adr[7:0] ;
end
//------���������� ������-------------------------------------
reg en_tx_byte=0 ; //�������� �������� �����
reg [3:0] cb_bit_tx=0 ; //������� ��� �����
reg [7:0] sr_dat_tx=0 ; //������� ������ ��� �����
reg [7:0] cb_byte_tx=0 ; //���������� ������� ����� ���� � �����
reg [3:0]cb_tx_byte =0 ; //����������� ������� ������ ������������ ����
wire T_start = ((cb_bit_tx==0) & en_tx_byte) ; //�������� ����� ����
wire en_sh_tx = (cb_bit_tx<9) & (cb_bit_tx>0); //�������� ������ ��� �����
wire T_stop = (cb_bit_tx==9) ; //�������� ���� ����
wire ce_stop = T_stop & ce_tact ; //������� ����� �����
wire rep_st = ok_rx_bl | ((cb_byte_tx>1) & ce_stop) ;//�������� ������� �������� ����
wire txd_1Byte = T_start? 0 : en_tx_byte? sr_dat_tx[0] : 1 ;//TXD ������ �����
assign TXD = en_tx_bl? txd_1Byte : 1 ; //TXD ����� ����
//���������� ���� ������
wire[7:0]lbl_tx = com_wr? 4 ://4 ����� �� ������� ������
com_rd? rx_lbl+4 ://4 ����� + ����� ���� ������ �� ������� ������
1 ; //1 ���� �� "�����" �������
//�������������� ���������� ���� ������
wire[7:0]tx_dat = (cb_tx_byte==0)? com : //�������
(cb_tx_byte==1)? rx_lbl : //����� ����
(cb_tx_byte==2)? wr_adr[15:8] : //������� ���� ������
(cb_tx_byte==3)? wr_adr[ 7:0] : //������� ���� ������
rd_dat ; //������
always @ (posedge clk) begin
cb_tx_byte <= ok_rx_bl? 0 : (ce_stop & (cb_tx_byte<4) )? cb_tx_byte+1 : cb_tx_byte ;
rd_adr <= ok_rx_bl? wr_adr: (ce_stop & (cb_tx_byte==4))? rd_adr+1 : rd_adr ;
en_tx_byte <= rep_st? 1 : (T_stop & ce_tact)? 0 : en_tx_byte ;
cb_bit_tx <= rep_st? 0 : (ce_tact & en_tx_byte)? cb_bit_tx+1 : cb_bit_tx ;
sr_dat_tx <= (T_start & ce_tact)? tx_dat : (en_sh_tx & ce_tact)? sr_dat_tx>>1 | 1<<7 : sr_dat_tx ;
cb_byte_tx <= ok_rx_bl? lbl_tx : ce_stop? cb_byte_tx-1 : cb_byte_tx ;
en_tx_bl <= ((cb_byte_tx==1) & ce_stop)? 0 : ok_rx_bl? 1 : en_tx_bl ;
end
endmodule
