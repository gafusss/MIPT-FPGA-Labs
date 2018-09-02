`timescale 1ns / 1ps


module tf_VCJ4RE;

	// Inputs
	reg ce;
	reg clk;
	reg r;

	// Outputs
	wire TC;
	wire CEO;
	wire [3:0] Q;

	// Instantiate the Unit Under Test (UUT)
	VCJ4RE uut (
		.ce(ce), 
		.clk(clk), 
		.r(r), 
		.TC(TC), 
		.CEO(CEO), 
		.Q(Q)
	);

//�������� �������������� ������� ������������� clk
parameter Tclk=20; //������ ������� ������������� 20 ��
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
	
	#100; r = 1;
	#25; r = 0;
	#300; ce = 0;
	#5; ce = 1;
	end
      
endmodule

