// Verilog test fixture created from schematic D:\lab15\Sch.sch - Fri Jan 13 17:47:36 2017

`timescale 1ns / 1ps

module Sch_Sch_sch_tb();

// Inputs
   reg F50MHz;
   reg [6:0] SW;
   reg BTN0;

// Output
   wire JA9;
   wire JA10;
   wire JB1;
   wire JA7;
   wire [3:0] AN;
   wire [6:0] seg;
   wire seg_P;
   wire JA8;

// Bidirs

// Instantiate the UUT
   Sch UUT (
		.F50MHz(F50MHz), 
		.JA9(JA9), 
		.JA10(JA10), 
		.JB1(JB1), 
		.JA7(JA7), 
		.AN(AN), 
		.seg(seg), 
		.seg_P(seg_P), 
		.SW(SW), 
		.BTN0(BTN0), 
		.JA8(JA8)
   );
	
	parameter Tclk=20; //Период сигнала синхронизации 20 нс
	always begin F50MHz=0; #(Tclk/2); F50MHz=1; #(Tclk/2); end
	
// Initialize Inputs
       initial begin
		SW = 1;
		BTN0 = 0;
		end
endmodule
