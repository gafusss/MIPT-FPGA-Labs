`timescale 1ns / 1ps


`define Fclk 50000000
`define COM_Vel 115200
`define COM_Nt `Fclk/`COM_Vel //434
module URXD_1byte(
						input in, 	output reg en_rx_byte=0, //Разрешениеприема
						input clk, 	output reg [7:0] sr_dat=0, //Регистрсдвигаданных
										output wire ok_rx_byte, //Стробконцаприемабайта
										output reg [3:0]cb_bit=0, //Счетчикбит
										output wire T_dat, //Интервалданных
										output wire ce_tact, //Стробтакта
										output wire ce_bit); //Строббита

reg tin=0, ttin=0;//Триггеры задержки входного сигнала
reg [8:0]cb_tact=0 ;//Счетчик тактов

assign ce_tact = (cb_tact==`COM_Nt) ;//Границы тактов

wire din = !tin& ttin ; //Спад входного сигнала
wire start_rx = din & !en_rx_byte ; //

assign T_dat = (cb_bit<9) & (cb_bit>0);//Интервал данных
assign ce_bit = (cb_tact==`COM_Nt/2);//Центры тактов
assign ok_rx_byte = (ce_bit & (cb_bit==9) & en_rx_byte & tin);

always @ (posedge clk) begin
	tin<= in ; ttin <= tin ;
	cb_tact <= (start_rx | ce_tact)? 1 : cb_tact+1;
	en_rx_byte <= (ce_bit & !tin)? 1: ((cb_bit==9) & ce_bit)? 0 : en_rx_byte ;
	cb_bit <= (start_rx | ((cb_bit==9) & ce_tact))? 0 : (ce_tact & en_rx_byte)? cb_bit+1 : cb_bit ;
	sr_dat <= start_rx? 0 : (ce_bit & T_dat)? sr_dat >>1 | tin<<7 : sr_dat ;//in
end

endmodule
