`timescale 1ns / 1ps



module BIN32_to_DEC8(
							input[31:0]BIN,output reg [31:0]DEC=0,
							input clk, 		output reg [3:0]ptr_dig=0,//Указатель номера декадной цифры
							input st, 		output reg en_conv=0,
												output reg ok_conv=0 );

reg[3:0]D1dec=0; reg[3:0]D2dec=0; reg[3:0]D3dec=0; reg[3:0]D4dec=0;
reg[3:0]D5dec=0; reg[3:0]D6dec=0; reg[3:0]D7dec=0; reg[3:0]D8dec=0;
reg q=0 ;
reg [27:0]rest=0;//Остаток

wire[26:0]Nd = (ptr_dig==8)?10000000 :
					(ptr_dig==7)?1000000 :
					(ptr_dig==6)?100000 :
					(ptr_dig==5)?10000 :
					(ptr_dig==4)?1000 :
					(ptr_dig==3)?100 :
					(ptr_dig==2)?10 :
					(ptr_dig==1)?1 : 0 ;

wire [27:0]dx = rest-Nd ;
wire z = dx[27] ; // Знак разности
wire en_inc_dig = en_conv & q & !z ;//Разрешение инкремента декадной цифры
wire en_dec_ptr = en_conv & !q & z ;//Разрешение декремента указателя цифры

always @(posedge clk) begin
	q <= st? 0 : en_conv? !q : q ;//q - для исключения необходимости восстановления остатка
	en_conv <= st? 1 : (ptr_dig==0)? 0 : en_conv ; //Разрешение преобразования
	rest <= st? BIN : en_inc_dig? dx : rest ; //Остаток
	ptr_dig <= st? 8: en_dec_ptr? ptr_dig-1 : ptr_dig ; //Указатель очередной декадной цифры
	D8dec <= st? 0 : ((ptr_dig==8) & en_inc_dig)? D8dec+1 : D8dec ;
	D7dec <= st? 0 : ((ptr_dig==7) & en_inc_dig)? D7dec+1 : D7dec ;
	D6dec <= st? 0 : ((ptr_dig==6) & en_inc_dig)? D6dec+1 : D6dec ;
	D5dec <= st? 0 : ((ptr_dig==5) & en_inc_dig)? D5dec+1 : D5dec ;
	D4dec <= st? 0 : ((ptr_dig==4) & en_inc_dig)? D4dec+1 : D4dec ;
	D3dec <= st? 0 : ((ptr_dig==3) & en_inc_dig)? D3dec+1 : D3dec ;
	D2dec <= st? 0 : ((ptr_dig==2) & en_inc_dig)? D2dec+1 : D2dec ;
	D1dec <= st? 0 : ((ptr_dig==1) & en_inc_dig)? D1dec+1 : D1dec ;
	ok_conv <= st? 0 : ((ptr_dig==1) & en_dec_ptr) ;
	DEC <= ok_conv? {D8dec, D7dec, D6dec, D5dec, D4dec, D3dec, D2dec, D1dec} : DEC ;
end

endmodule
