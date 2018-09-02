
`define Fclk 50000000

`define Fce 100
`define m_NFce 7		//2^`m_NFce > `Fce

`define m 5

`define m_Y `m+1	//6
`define m_X `m+1	//6
`define m_M `m_X+`m_NFce	//13 = 6+7
`define m_S `m_Y	//6