module URXD1B( input clk, 	output wire RXD, //Выход
									output wire ce_tact, //Строб такта
					input Inp, 		//output reg en_tx =0, //Интервал передачи байта
									output reg [3:0] cb_bit=10,
									output wire T_start, //Старт такт
									output wire T_dat, //Интервал данных
									output wire T_stop, //Стоп такт
										//output wire ce_stop, //Конец кадра
									output reg en_rx_byte = 0,
									output wire ok_rx_byte,
									output wire start,
									output wire ce_bit,
									output reg [7:0] sr_dat=0 );//Регистр сдвига данных

parameter Fclk=50000000 ; //50 MHz
parameter VEL = 19200; //115200 ; //115.2 kBod (из таблицы 1 вариантов)
parameter Nt = Fclk/VEL ; //~434

reg [15:0]cb_tact=0 ; //Счетчик такта

assign ce_tact = (cb_tact==Nt) ; //Компаратор cb_tact с Nt //
assign T_start = (cb_bit == 0); //((cb_bit==0) & en_tx) ; // Компаратор старт такта
assign T_dat = (cb_bit<9) & (cb_bit>0); // Компаратор интервала данных //
assign T_stop = (cb_bit == 9 & en_rx_byte); //((cb_bit==9) & en_tx); // Компаратор стоп такта

//assign TXD = T_start? 0 : T_dat? sr_dat[0] : 1 ; //Последовательные данные sr_dat[0]
assign RXD = Inp;

assign ce_bit = (cb_tact == Nt/2);//
assign ok_rx_byte = T_stop & ce_bit & RXD;//

reg t_RXD;
wire dRXD = t_RXD & !RXD;
assign start = dRXD & !en_rx_byte ; //

//-------------
always @ (posedge clk) begin
	t_RXD <= RXD;

	cb_tact <= (start | ce_tact)? 1 : cb_tact+1 ; //"Сброс" в 1 при cb_tact==`Nt
	en_rx_byte <= (T_start & ce_bit)? 1 : (ok_rx_byte)? 0 : en_rx_byte;//st? 1 : ce_stop? 0 : en_tx;
	cb_bit <= start? 0 : (ce_tact & en_rx_byte)? cb_bit+1 : cb_bit ;
	
	
	sr_dat <= (T_dat & ce_bit)? (RXD << 7)|(sr_dat >> 1) : sr_dat; //(T_start & ce_tact)? dat : (T_dat & ce_tact)? sr_dat>>1 : sr_dat ; /* Сдвиг sr_dat младшими битами вперед*/
end

endmodule
