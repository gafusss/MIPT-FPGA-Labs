`timescale 1ns / 1ps



module URXD_BL (
						input RXD, 	output reg [7:0] com=0, //Команда
						input clk, 	output reg [7:0] lbl=0, //Число принятых байт
										output reg [15:0] adr=0, //Адрес блока байт
										output wire [7:0] rx_dat, //Байты данных
										output wire ce_wr_dat, //Разрешение записи байта
										output wire ok_rx_bl); //Конец приема блока байт
										
reg[7:0]cb_rx_byte=0;

wire my_com = (com==8'h80) | (com==8'h00);//Моя команда
wire T_com = (cb_rx_byte==0) ; wire T_lbl = (cb_rx_byte==1) ;
wire T_Hadr= (cb_rx_byte==2); wire T_Ladr= (cb_rx_byte==3) ;
wire en_rx_byte, ok_rx_byte, ce_tact, T_dat, ce_bit ;

assign ce_wr_dat = (cb_rx_byte>3) & ok_rx_byte & !(lbl==0) & (com==8'h00);

always @ (posedge clk) begin
	com<= (T_com & ok_rx_byte)? rx_dat : com;
end

always @ (posedge clk) if (my_com) begin
	lbl<= (T_com & ok_rx_byte)? 0 : (T_lbl & ok_rx_byte)? rx_dat : ce_wr_dat? lbl-1 : lbl ;
	adr[15:8] <= (T_Hadr & ok_rx_byte)? rx_dat : adr[15:8];
	adr[ 7:0] <= (T_Ladr & ok_rx_byte)? rx_dat : ce_wr_dat? adr[7:0]+1 : adr[7:0] ;
end

reg [7:0]cb_res ;
reg en_rx_bl=0;

wire [15:0] rx_crc;

reg ten_rx_byte=0, tten_rx_byte=0 ;

wire start_rx = ten_rx_byte & !tten_rx_byte ;
wire st_crc = start_rx & (cb_rx_byte==0) ;
wire ce_crc = T_dat & ce_bit;
wire res = (cb_res==10) & ce_tact ;

assign ok_rx_bl = res & (rx_crc==0) ;

always @ (posedge clk) begin
	ten_rx_byte <= en_rx_byte ; tten_rx_byte <= ten_rx_byte ;
	cb_rx_byte <= res? 0 : ok_rx_byte? cb_rx_byte+1 : cb_rx_byte ;
	cb_res <= en_rx_byte? 0 : (ce_tact & en_rx_bl)? cb_res+1 : cb_res ;
	en_rx_bl <= res? 0 : st_crc? 1 : en_rx_bl ;
end
//----Прием одного байта
URXD_1byte DD1 (  .in(RXD), 						.en_rx_byte(en_rx_byte),
						.clk(clk), 						.sr_dat(rx_dat),
															.ok_rx_byte(ok_rx_byte),
															.ce_tact(ce_tact),
															.ce_bit(ce_bit),
															.T_dat(T_dat));
//----Вычисление CRC кода
CRC_BL DD2 (.ce(ce_crc), .crc(rx_crc),
				.clk(clk),
				.st(st_crc),
				.in(RXD));
endmodule