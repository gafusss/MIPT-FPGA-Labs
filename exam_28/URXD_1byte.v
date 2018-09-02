`timescale 1ns / 1ps


`define Fclk 50000000
`define COM_Vel 115200
`define COM_Nt `Fclk/`COM_Vel //434
module URXD_1byte(
						input in, 	output reg en_rx_byte=0, //����������������
						input clk, 	output reg [7:0] sr_dat=0, //�������������������
										output wire ok_rx_byte, //���������������������
										output reg [3:0]cb_bit=0, //����������
										output wire T_dat, //��������������
										output wire ce_tact, //����������
										output wire ce_bit); //���������

reg tin=0, ttin=0;//�������� �������� �������� �������
reg [8:0]cb_tact=0 ;//������� ������

assign ce_tact = (cb_tact==`COM_Nt) ;//������� ������

wire din = !tin& ttin ; //���� �������� �������
wire start_rx = din & !en_rx_byte ; //

assign T_dat = (cb_bit<9) & (cb_bit>0);//�������� ������
assign ce_bit = (cb_tact==`COM_Nt/2);//������ ������
assign ok_rx_byte = (ce_bit & (cb_bit==9) & en_rx_byte & tin);

always @ (posedge clk) begin
	tin<= in ; ttin <= tin ;
	cb_tact <= (start_rx | ce_tact)? 1 : cb_tact+1;
	en_rx_byte <= (ce_bit & !tin)? 1: ((cb_bit==9) & ce_bit)? 0 : en_rx_byte ;
	cb_bit <= (start_rx | ((cb_bit==9) & ce_tact))? 0 : (ce_tact & en_rx_byte)? cb_bit+1 : cb_bit ;
	sr_dat <= start_rx? 0 : (ce_bit & T_dat)? sr_dat >>1 | tin<<7 : sr_dat ;//in
end

endmodule
