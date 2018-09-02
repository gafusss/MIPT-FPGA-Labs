`include "CONST.v"
module RX_TIMER(
	input clk, 	output wire ce,				//Tce=Tbit/`NP точка 10 тактов
	input RXP, 	output wire res,				//—брос в паузе
	input RXN, 	output reg [7:0] N_RXPN=0,	//„исло импульсов в "слове"
					output reg err=0);//ќшибка

reg tRXP=0, tRXN=0;

wire dRXP = RXP & !tRXP; //‘ронт RXP
wire dRXN = RXN & !tRXN; //‘ронт RXN

reg [5:0]cb_ce=0;

assign ce=(cb_ce==`Fclk/(`BR*`NP));//50000000/(100000*100)=5,...50000000/(12500*100)=40

reg [7:0] cb_RXPN=0 ;//—четчик суммы импульсов в "слове"

//--√енератор ce
always @ (posedge clk) begin
	cb_ce <= ce? 1 : cb_ce+1 ;
end

//---√енератор сброса
reg [8:0] cb_res=0 ;//—четчик сброса в паузе между "словами"

assign res = (cb_res==(3*`NP)-1);//

reg tres = 0 ;
reg RCLK = 0 ;// RXP | RXN

always @ (posedge clk) if (ce) begin
	tRXP <= RXP ; tRXN <= RXN ;
	tres <= res ;
	RCLK <= (dRXP | dRXN) ;//
	cb_res <= (RCLK | res)? 0 : cb_res+1 ;//: ce? cb_res ;
	N_RXPN <= res? cb_RXPN : N_RXPN ;
	err <= (tres & !(N_RXPN==32))? 1 : 0 ;//ќшибка, если не 32 импульса
end

//---—чет суммы импульсов в "слове"
always @ (posedge tres or posedge RCLK) begin
	cb_RXPN <= tres? 0 : cb_RXPN+1 ;
end

endmodule
