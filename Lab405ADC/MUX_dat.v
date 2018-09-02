module MUX_dat(
input [5:0] A, output wire [11:0] E,
input [7:0] B,
input [11:0] C,
input [11:0] D,
input [1:0] adr );
assign E =(adr==0)? {10'h000,A} :
(adr==1)? {4'h0,B} :
(adr==2)? C : D ;
endmodule