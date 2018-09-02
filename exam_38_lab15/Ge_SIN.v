`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:34:55 01/13/2017 
// Design Name: 
// Module Name:    Ge_SIN 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
`include "PARAMETERS.v"
module Gen_SIN (	input clk, 				output reg S=0, 				//S=1 sin>0.
						input ce, 				output reg[4:0]X=0, 			//Xmin<=X<=Xmax.
													output wire[11:0]Y, 			//Y=NA*sin(2*pi*X/NP).
													output wire[11:0]SIN, 		//SIN = S? SHsin+Y :SHsin-Y.
													output wire[11:0]SIN_L); 	//SIN = S? SHsin+(Y>>5) :SHsin-(Y>>5).
																						// SIN_L это тоже синусоидальный сигнал, но с уменьшенной в 32 раза амплитудой.
parameter Xmin=0 ;
parameter Xmax=`NP/4 ;
reg up=1 ; 																			//Триггер направления счета.
wire [11:0]SHsin = `NS ; 										//Смещение `NS.
always @ (posedge clk) if (ce) begin
	X <= up? X+1 : X-1 ;
	up<= (X==Xmin+1)? 1 : (X==Xmax-1)? 0 : up ;
	S <= ((X==0) & up)? !S : S ;
end
ROM_Y DD1 (.adr(X), .DO(Y));	 												//Таблица Y=NA*sin(2*pi*X/NP).
assign SIN = S? SHsin+Y :SHsin-Y ;
assign SIN_L = S? SHsin+(Y>>5) :SHsin-(Y>>5) ; 							//Y/32
endmodule
