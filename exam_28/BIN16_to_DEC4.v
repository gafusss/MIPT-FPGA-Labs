`timescale 1ns / 1ps

module BIN16_to_DEC4(
							input[15:0]BIN,output reg[15:0]DEC=0,
							input clk, 		output reg [4:0]ptr_dig=0,//Указатель номера декадной цифры
							input st, 		output reg en_conv=0,
												output reg ok=0);

//----Счетчики декадных цифр
reg[3:0]D1dec=0; reg[3:0]D2dec=0; reg[3:0]D3dec=0; reg[3:0]D4dec=0;
reg q=0 ;
reg [16:0]rest;//Остаток

wire[15:0]Nd = (ptr_dig==4)? 1000 :
					(ptr_dig==3)?100 :
					(ptr_dig==2)?10 :
					(ptr_dig==1)?1 : 0 ;

wire [16:0]dx = rest-Nd ; //Разность между остатком и di (i=4,3,2,1)
wire z = dx[16] ; // Знак разности
wire en_inc_dig =en_conv&q& !z ; //Разрешение инкремента декадной цифры
wire en_dec_ptr =en_conv& !q&z ; //Разрешение декремента указателя цифры

always @(posedge clk) begin
	q<= st? 0 :en_conv? !q : q ;//q - для исключения необходимости восстановления остатка
	en_conv<= st? 1 : (ptr_dig==0)? 0 :en_conv ;//Разрешение преобразования
	rest<= st? BIN :en_inc_dig? dx : rest ;//Остаток
	ptr_dig<= st? 4: en_dec_ptr? ptr_dig-1 :ptr_dig ;//Указатель очередной декадной цифры
	D4dec <= st? 0 : ((ptr_dig==4)&en_inc_dig)? D4dec+1 : D4dec ;
	D3dec <= st? 0 : ((ptr_dig==3)&en_inc_dig)? D3dec+1 : D3dec ;
	D2dec <= st? 0 : ((ptr_dig==2)&en_inc_dig)? D2dec+1 : D2dec ;
	D1dec <= st? 0 : ((ptr_dig==1)&en_inc_dig)? D1dec+1 : D1dec ;
	ok<=(ptr_dig==0) &en_conv;
	DEC<= ok? {D4dec,D3dec,D2dec,D1dec}: DEC ;
end

endmodule
