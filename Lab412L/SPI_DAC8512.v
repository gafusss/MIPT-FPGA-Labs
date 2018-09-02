`timescale 1ns / 1ps


`include "PARAMETERS.v"
module SPI_DAC8512 ( 						output wire SDAT, //Последовательные данные.
							input st, 			output wire SCLK, //Сигнал синхронизации.
							input clk, 			output reg NCS=1, //Выбор кристалла.
							input [11:0] DI, 	output reg NLD=1, //Асинхронная загрузка.
													output wire ce, //
													output reg[3:0]cb_bit=0 ); //Счетчик бит.
parameter Tsclk = 80 ; //Tsclk=Tcl+Tch=40+40 ns

reg [11:0]sr_dat=0; //Регистр сдвига данных
reg [1:0]cb_ce=0; //Счетчик тактов

assign ce = (cb_ce==(Tsclk/`Tclk)-1) ;// (cb_ce==80/20-1=3)
assign SCLK= cb_ce[1] | NCS ; //Старший бит счетчика тактов. 40ns
assign SDAT = sr_dat[11]; //Старший бит регистра сдвига

always @ (posedge clk) begin
	cb_ce <= (st | ce)? 0 : cb_ce+1 ;
	NCS <= st? 0 : ((cb_bit==11) & ce)? 1 : NCS ; //После передачи данных в конце такта Chip Select в 1
	cb_bit <= st? 0 : (!NCS & ce)? cb_bit+1 : cb_bit ;
	sr_dat <= st? DI : (ce & !NCS)? sr_dat<<1 : sr_dat ; //По окончанию такта сдвинуть регистр
	NLD <= st? 1 : ce? !(cb_bit==11) : NLD ; //После передачи данных в конце такта LD в 0 для загрузки данных сдвигового регистра в регистр ЦАП
end

endmodule