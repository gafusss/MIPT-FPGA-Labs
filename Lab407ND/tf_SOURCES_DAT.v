`timescale 1ns / 1ps

module tf_SOURCES_DAT;

	// Outputs
	wire [14:0] MASTER_dat;
	wire [15:0] MASTER_dat_disp;
	wire [15:0] SLAVE_dat_disp;
	wire [14:0] SLAVE_dat;

	// Instantiate the Unit Under Test (UUT)
	SOURCES_DAT uut (
		.MASTER_dat(MASTER_dat), 
		.MASTER_dat_disp(MASTER_dat_disp), 
		.SLAVE_dat_disp(SLAVE_dat_disp), 
		.SLAVE_dat(SLAVE_dat)
	);

	initial begin
		// Initialize Inputs

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

