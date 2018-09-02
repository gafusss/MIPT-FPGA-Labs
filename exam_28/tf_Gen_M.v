`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:09:34 12/15/2016
// Design Name:   Gen_M
// Module Name:   D:/Other/Agafonov/exam_28/tf_Gen_M.v
// Project Name:  exam_28
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Gen_M
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tf_Gen_M;

	// Inputs
	reg clk;
	reg ce5ms;
	reg [10:0] x;

	// Outputs
	wire s;

	// Instantiate the Unit Under Test (UUT)
	Gen_M uut (
		.clk(clk), 
		.ce5ms(ce5ms), 
		.x(x), 
		.s(s)
	);

	parameter T5ms = 5000000;
	always begin #(T5ms - 20); ce5ms = 1; #20; ce5ms = 0; end;
	parameter Tclk = 20;
	always begin #(Tclk/2); clk = 1; #(Tclk/2); clk = 0; end;
	

	initial begin
		// Initialize Inputs
		clk = 0;
		ce5ms = 0;
		x = 4;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

