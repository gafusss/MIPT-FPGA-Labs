`timescale 1ns / 1ps


`include "PARAMETERS.v"
module SPI_DAC8043( 							output wire SDAT, //Последовательные данные.
							input st, 			output wire SCLK, //Сигнал синхронизации.
							input clk, 			//output reg NCS=1, //Выбор кристалла.
							input [11:0] DI, 	output reg NLD=1, //Асинхронная загрузка.
													output wire ce, //
													output reg[3:0]cb_bit=0 ); //Счетчик бит.

//Tcl >= 120
//Tch >= 90
//		Tsclk > 210
//Tld >= 120

//Tds >= 40				Между началом символа и стартом такта
//Tdh >= 80				Между началом соотв. такта и концом соотв. бита

//Tasb >= 0  			Между началом последнего такта (с загрузкой младшего бита) и началом загрузки (!NLD)													
													

//---
//Tcl = 140
//Tch = 100
//Tsclk = 240
//Tld = 140
//Tds обеспечивается автоматически при смене символа по спадающему фронту SCLK (Tcl > Tds)
//Tdh обеспечивается автоматически при смене символа по спадающему фронту SCLK (Tch > Tdh)


//Tst >= 2.89us = 2890ns

parameter Tcl = 140;
parameter Tch = 100;
parameter Tsclk = Tcl + Tch; //240

reg [11:0]sr_dat=0; //Регистр сдвига данных
reg [3:0]cb_ce=0; //Счетчик тактов
reg NCS = 1; //!Процесс идёт

assign ce = (cb_ce==(Tsclk/`Tclk)-1); // (cb_ce==240/20-1=11)
assign SCLK= (cb_ce > (Tcl/`Tclk)-1)&&(!NCS); //cb_ce > 7	//cb_ce[1] | NCS ; //Старший бит счетчика тактов. 40ns
assign SDAT = sr_dat[11]; //Старший бит регистра сдвига

always @ (posedge clk) begin
	cb_ce <= (st | ce)? 0 : cb_ce+1 ;
	NCS <= st? 0 : ((cb_bit==11) & ce)? 1 : NCS ; //После передачи данных в конце такта
	cb_bit <= st? 0 : (!NCS & ce)? cb_bit+1 : cb_bit ;
	sr_dat <= st? DI : (ce & !NCS)? sr_dat<<1 : sr_dat ; //По окончанию такта сдвинуть регистр
	NLD <= st? 1 : ce? !(cb_bit==10) : NLD ; //После передачи данных в конце такта LD в 0 для загрузки данных сдвигового регистра в регистр ЦАП
end

endmodule
