`timescale 1ns / 1ps


module tf_UTXD1B;

	// Inputs
	reg clk;
	reg [7:0] dat;
	reg st;

	// Outputs
	wire TXD;
	wire ce_tact;
	wire [3:0] cb_bit;
	wire T_start;
	wire T_dat;
	wire T_stop;
	wire ce_stop;
	wire en_tx_byte;
	wire [7:0] sr_dat;

	// Instantiate the Unit Under Test (UUT)
	UTXD1B uut (
		.clk(clk), 
		.TXD(TXD), 
		.dat(dat), 
		.ce_tact(ce_tact), 
		.st(st), 
		.cb_bit(cb_bit), 
		.T_start(T_start), 
		.T_dat(T_dat), 
		.T_stop(T_stop), 
		.ce_stop(ce_stop), 
		.en_tx_byte(en_tx_byte), 
		.sr_dat(sr_dat)
	);

always begin clk = 1'b0; #10 clk = 1'b1; #10; end // PERIOD = 20
	initial begin
		// Initialize Inputs
		dat = 8'b10000001;
		st = 0;

		// Wait 100 ns for global reset to finish
		#100;
		st = 1;
		#20; st = 0;
        
		// Add stimulus here

	end
      
endmodule

