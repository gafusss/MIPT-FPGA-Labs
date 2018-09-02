`timescale 1ns / 1ps

module tf_Gen_XY;

	// Inputs
	reg st;
	reg clk;
	reg [7:0] SW;

	// Outputs
	wire [11:0] Q;
	wire UP;
	wire [11:0] X;
	wire [11:0] Y;

	// Instantiate the Unit Under Test (UUT)
	Gen_XY uut (
		.Q(Q), 
		.st(st), 
		.UP(UP), 
		.clk(clk), 
		.X(X), 
		.SW(SW), 
		.Y(Y)
	);


parameter Tclk = 20;
always begin clk=0 ; #(Tclk/2) clk=1; #(Tclk/2) ; end
parameter  Tst = 2900;
//Tst >= 2.89us = 2890ns
always begin st = 0; #(Tst - 20); st = 1; #20; end


	initial begin
		// Initialize Inputs
		st = 0;
		clk = 0;
		SW = 0;

		// Wait 100 ns for global reset to finish
		#100;
		//#5222790;
		SW = 8'b11000000;
		#100;
		SW = 8'b11000001;
		#100;
		SW = 8'b11000010;
		#100;
		SW = 8'b11000011;
		#100;
		SW = 8'b11000100;
		#100;
        
		// Add stimulus here

	end
      
endmodule

