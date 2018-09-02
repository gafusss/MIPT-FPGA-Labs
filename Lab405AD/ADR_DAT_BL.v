module ADR_DAT_BL(input BTN, 	output wire [1:0] VEL,
										output wire [7:0] ADR,
										output wire [22:0] DAT);

wire [4:0] my_nom = 5'b01000 ; //5'b01000=8 ;

assign ADR = {3'b100,my_nom} ;

parameter my_dat = 23'h4C6600 ;
parameter my_VEL = 2'b01 ; // 50 kBod

wire my_bit_dat=(my_dat[13]^BTN) ;

assign DAT={my_dat[22:14],my_bit_dat,my_dat[12:0]} ;
assign VEL = my_VEL ;

endmodule
