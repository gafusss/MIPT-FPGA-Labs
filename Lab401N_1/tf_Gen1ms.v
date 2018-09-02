`timescale 1ns / 1ps


module tf_Gen1ms;

	// Inputs
	reg clk;

	// Outputs
	wire ce_1ms;

	// Instantiate the Unit Under Test (UUT)
	Gen1ms uut (
		.clk(clk), 
		.ce_1ms(ce_1ms)
	);

//�������� �������������� ������� ������������� clk
parameter Tclk=20; //������ ������� ������������� 20 ��
always begin clk=0; #(Tclk/2); clk=1; #(Tclk/2); end
	initial begin
		// Initialize Inputs
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

