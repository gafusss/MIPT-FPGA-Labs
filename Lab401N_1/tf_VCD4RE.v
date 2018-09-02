`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   01:41:29 09/22/2016
// Design Name:   VCD4RE
// Module Name:   D:/Other/Agafonov/Lab401N/tf_VCD4RE.v
// Project Name:  Lab401N
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: VCD4RE
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tf_VCD4RE;

	// Inputs
	reg ce;
	reg clk;
	reg r;

	// Outputs
	wire TC;
	wire CEO;
	wire [3:0] Q;

	// Instantiate the Unit Under Test (UUT)
	VCD4RE uut (
		.ce(ce), 
		.clk(clk), 
		.r(r), 
		.TC(TC), 
		.CEO(CEO), 
		.Q(Q)
	);

	//Генратор периодичеккого сигнала синхронизации clk
	parameter Tclk=20; //Период сигнала синхронизации 20 нс
	always begin clk=0; #(Tclk/2); clk=1; #(Tclk/2); end

	initial begin
		// Initialize Inputs
		ce = 0;
		clk = 0;
		r = 0;

		// Wait 100 ns for global reset to finish
		#100;
		ce = 1;
		r = 0;
		clk = 0;
		
	#80; ce = 0;
	#20; ce = 1;
	
	#35; r = 1;
	#25; r = 0;
	#180; ce = 0;
	#5; ce = 1;

	end
      
endmodule

