`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:07:36 01/13/2017
// Design Name:   ACCM
// Module Name:   D:/lab15/lab15/tf_ACCM.v
// Project Name:  lab15
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ACCM
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tf_ACCM;

	// Inputs
	reg [6:0] X;
	reg clk;

	// Outputs
	wire [15:0] ACC;
	wire CO;
	wire Mx;

	// Instantiate the Unit Under Test (UUT)
	ACCM uut (
		.X(X), 
		.ACC(ACC), 
		.CO(CO), 
		.clk(clk), 
		.Mx(Mx)
	);
	parameter Tclk=20; //Период сигнала синхронизации 20 нс
	always begin clk=0; #(Tclk/2); clk=1; #(Tclk/2); end
	initial begin
		// Initialize Inputs
		X = 100;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

