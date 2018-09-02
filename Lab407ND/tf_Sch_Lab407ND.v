
`timescale 1ns / 1ps

module Sch_Lab407ND_Sch_Lab407ND_sch_tb();

// Inputs
   reg F50MHz;
   reg BTN0;
   reg [2:0] SW;
   reg JC1;

// Output
   wire JC2;
   wire JB1;
   wire JB2;
   wire JB3;
   wire JC3;
   wire LED0;
   wire JB4;
   wire seg_P;
   wire JC4;
   wire [3:0] AN;
   wire [6:0] seg;

// Bidirs

// Instantiate the UUT
   Sch_Lab407ND UUT (
		.F50MHz(F50MHz), 
		.JC2(JC2), 
		.JB1(JB1), 
		.JB2(JB2), 
		.JB3(JB3), 
		.JC3(JC3), 
		.BTN0(BTN0), 
		.SW(SW), 
		.JC1(JC1), 
		.LED0(LED0), 
		.JB4(JB4), 
		.seg_P(seg_P), 
		.JC4(JC4), 
		.AN(AN), 
		.seg(seg)
   );
	
	always begin F50MHz = 0; #10; F50MHz = 1; #10; end
	
       initial begin
		BTN0 = 0;
		SW = 3'b100;
		JC1 = 0;
		end
endmodule
