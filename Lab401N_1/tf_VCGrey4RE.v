`timescale 1ns / 1ps


module tf_VCGrey4RE;

	// Inputs
	reg clk;
	reg ce;
	reg r;

	// Outputs
	wire [3:0] Y;
	wire CEO;
	wire TC;

	// Instantiate the Unit Under Test (UUT)
	VCGrey4RE uut (
		.clk(clk), 
		.ce(ce), 
		.r(r), 
		.Y(Y), 
		.CEO(CEO), 
		.TC(TC)
	);

//�������� �������������� ������� ������������� clk
parameter Tclk=20; //������ ������� ������������� 20 ��
always begin clk=0; #(Tclk/2); clk=1; #(Tclk/2); end

	initial begin
		// Initialize Inputs
		clk = 0;
		ce = 0;
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
	#300; ce = 0;
	#5; ce = 1;
	end
      
endmodule

