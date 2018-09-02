`define Fclk 50000000 //50 MHz
//`define BR 12500 //BAUDRATE - скорость 12,5 kBOD
`define BR 50000 //BAUDRATE - скорость 500 kBOD
//`define BR 100000 //BAUDRATE - скорость 100 kBOD
`define NBR `Fclk/`BR //50000000/50000=1000
`define NP 100 //Число точек на Tbit
`define NRF 15 //Число точек фронта/спада
`define Nbit 32 //Число бит в слове
`define Npaus 4 //Длительность минимальной паузы Tpaus=Tbit*Npaus
`define NS0 2048 //Смещение нуля (инициализация памяти 12'h800)
`define Azer 160 //Минимальная амплитуда импульса
`define my_DAT 31'h10000007 //Мои данные

//8 вариант