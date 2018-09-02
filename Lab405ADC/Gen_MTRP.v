`include "CONST.v"

module Gen_MTRP( 	output wire [11:0]MTRP, //Умноженная, смещенная трапеция
	input clk, 		output reg [4:0]DTRP=0, // Трапеция
	input st, 		output reg [6:0]cb_tact=0,
	input [5:0]M, 	output reg T_TRP=0,
	input S, 		output wire T_front,
						output wire T_spad,
						output wire ce);			//Импульс точки (10 тактов)

//---Генератор ce----------
reg [5:0]cb_ce=0;

assign ce=(cb_ce==`Fclk/(`BR*`NP)) ;

always @ (posedge clk) begin
	cb_ce <= (ce | st)? 1 : cb_ce+1 ;
end

assign T_front = (cb_tact>=0) & (cb_tact<`NRF) & T_TRP ;
assign T_spad = (cb_tact>=`NP/2) & T_TRP ;

wire [11:0]MDTRP=DTRP*(M<<1) ;//Умножение на 2M

assign MTRP = S? `NS0+MDTRP : `NS0-MDTRP ;

always @ (posedge clk) begin
	cb_tact <= st? 0 : (T_TRP & ce)? cb_tact+1 : cb_tact ;
	T_TRP <= st? 1 : ((cb_tact==`NP/2+`NRF) & ce)? 0 : T_TRP ;
	DTRP <= st? 1 : (T_front & ce)? DTRP+1 : (T_spad & ce)? DTRP-1 : T_TRP? DTRP : 0 ;
end

endmodule
