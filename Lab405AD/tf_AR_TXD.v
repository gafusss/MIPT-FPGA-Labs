`timescale 1ns / 1ps

module tf_AR_TXD;

	// Inputs
	reg clk;
	reg [1:0] Nvel;
	reg [7:0] ADR;
	reg [22:0] DAT;
	reg st;

	// Outputs
	wire ce_tact;
	wire TXD1;
	wire TXD0;
	wire SLP;
	wire en_tx;
	wire T_cp;
	wire FT_cp;
	wire SDAT;
	wire QM;
	wire [5:0] cb_bit;
	wire en_tx_word;

	// Instantiate the Unit Under Test (UUT)
	AR_TXD uut (
		.clk(clk), 
		.ce_tact(ce_tact), 
		.Nvel(Nvel), 
		.TXD1(TXD1), 
		.ADR(ADR), 
		.TXD0(TXD0), 
		.DAT(DAT), 
		.SLP(SLP), 
		.st(st), 
		.en_tx(en_tx), 
		.T_cp(T_cp), 
		.FT_cp(FT_cp), 
		.SDAT(SDAT), 
		.QM(QM), 
		.cb_bit(cb_bit), 
		.en_tx_word(en_tx_word)
	);
	
	parameter Tclk=20; //Tclk=20ns

	always begin clk=1'b0; #(Tclk/2) clk=1'b1; #(Tclk/2); end

	initial begin
		st = 0;
		
		Nvel = 1; ADR = 8'b10001000; DAT = 23'h4C6600;
		
		#1005; st = 1; 
		#20; st = 0;
		
		#25000; st = 1;
		#20; st = 0;
		
		#614965; st = 1;
		#20; st = 0;
		
		#80000; st = 1;
		#20; st = 0;
		
		//#640000 us it takes to finish

	end
      
endmodule

