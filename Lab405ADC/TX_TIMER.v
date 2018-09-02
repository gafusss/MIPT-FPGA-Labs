`include "CONST.v"
module TX_TIMER(
	input clk, 	output wire ce_bit,	//конец бита
	input ce, 	output reg en_tx=0, //Интервал передачи слова
					output wire st, //Начало кадра
					output wire T_cp); //Интервал контрольного бита

reg [7:0]cb_start=0; //Счетчик задержки старта

wire en_start = cb_start[7]; //Задержка на 128 Tce

reg [8:0]cb_bit=0 ; //Счетчик бит

assign ce_bit = (cb_bit==`NP) & ce & en_start ;

reg [5:0]cb_st=`Nbit ; //Счетчик периода кадров

assign T_cp = (cb_st==`Nbit-1) ; //Интервал контрольного бита
assign st = (cb_st==`Nbit+`Npaus-1) & ce_bit ; //Начало кадра

always @ (posedge clk) begin
	cb_start <= (!en_start & ce)? cb_start+1 : cb_start ;
	cb_bit <= ce_bit? 1 : ce? cb_bit+1 : cb_bit ;
	cb_st <= st? 0 : ce_bit? cb_st+1 : cb_st ;
	en_tx <= st? 1 : (T_cp & ce_bit)? 0 : en_tx ;
end

endmodule
