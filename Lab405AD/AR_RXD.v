`timescale 1ns / 1ps

module AR_RXD(
    input Inp0, 	output reg [22:0] sr_dat = 0,
    input Inp1, 	output reg [7:0] sr_adr = 0,
    input clk, 	output wire ce_wr
						//output reg [25:0] Tres = 0,
						//output wire [25:0] tTres
						);

reg err = 0;

reg [5:0] cb_bit_rx = 0;
reg FT_cp = 0;

wire T_cp = (cb_bit_rx == 31);

reg [25:0] Tres = 0;
reg ok_rx = 0;

assign ce_wr = ok_rx;

reg Inp_t = 0; 
wire has_input = Inp1 | Inp0;

reg [23:0] hTbit_ct = 1;
reg [23:0] hTbit = 1;
wire [25:0] tTres = hTbit << 2;
//assign tTres = hTbit << 2;


always @(posedge clk) begin
	
	hTbit_ct <= (has_input) ? hTbit_ct + 1 : 1;
	hTbit <= (!has_input & Inp_t) ? hTbit_ct : hTbit;
	
	Tres <= (has_input) ? 0 : (Tres == tTres) ? 0 : Tres + 1; 
	
	//Tres <= (cb_bit_rx == 0) ? 0 : (cb_bit_rx >= 1 && cb_bit_rx <= 3)? Tres + 1 : (cb_bit_rx == 32) ? Tres - 1:  Tres; //3*Tbit

	Inp_t <= has_input;
	cb_bit_rx <= (Inp_t & !has_input) ? cb_bit_rx + 1 : (Tres == tTres)? 0 : cb_bit_rx;
	
	
	ok_rx <= (T_cp & (FT_cp + Inp1 == 1) & !err)? 1 : 0;
	end


wire Inp = Inp1 | Inp0;

always @(posedge Inp) begin
	err <= ((cb_bit_rx == 0) & !(Inp0 & Inp1))? 0 : (Inp0 & Inp1) ? 1 : err;
	FT_cp <= (cb_bit_rx == 0) ? (Inp1) ? 1 : 0 : (Inp1)? FT_cp + 1 : FT_cp;
	
	sr_adr <= (cb_bit_rx <= 7)? ((sr_adr << 1) | Inp1) : sr_adr;
	sr_dat <= (cb_bit_rx <= 30)? ((sr_dat >> 1) | (Inp1 << 22)) : sr_dat;
	
	end

endmodule
