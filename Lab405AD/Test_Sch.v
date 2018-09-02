module Test_Sch( 							//Выходы передатчика
						input clk, 			output wire ce_tx, // Скорость (Tceo=1/Vel)
						input [1:0]Nvel, 	output wire TXD1, //Импульсы канала 1
						input [7:0]ADR, 	output wire TXD0, //Импульсы канала 0
						input [22:0]DAT, 	output wire SLP, // Крутизна фронтов
						input st, 			output wire en_tx_dat, // Интервал передачи данных
												output wire T_cp_tx, // Такт конца кадра
												output wire FT_tx, // Триггер контроля четности
												output wire SDAT, // Последовательные данные
												output wire QM, // Модулятор
												output wire [5:0]cb_bit, //Счетчик бит
												output wire en_tx_word, //Интервал передачи слова
												//Выходы приемника
												output wire[22:0] sr_dat_rx, //Регистр сдвига данных
												output wire[ 7:0] sr_adr_rx, //Регистр сдвига адреса
												output wire ok_rx); //Успешный прием

// Модуль передатчика
AR_TXD DD1 (
				.clk(clk), 		.ce_tact(ce_tx), // Скорость (Tceo=1/Vel)
				.Nvel(Nvel), 	.TXD1(TXD1), //Импульсы канала 1
				.ADR(ADR), 		.TXD0(TXD0), //Импульсы канала 0
				.DAT(DAT), 		.SLP(SLP), // Крутизна фронтов
				.st(st), 		.en_tx (en_tx_dat), // Интервал передачи данных
									.T_cp(T_cp_tx), // Такт конца кадра
									.FT_cp(FT_tx), // Триггер контроля четности
									.SDAT(SDAT), // Последовательные данные
									.QM(QM), // Модулятор
									.cb_bit(cb_bit), //Счетчик бит
									.en_tx_word(en_tx_word)); //Интервал передачи слова

// Модуль приемника
AR_RXD DD2 (.Inp0(TXD0), 	.sr_dat(sr_dat_rx),
				.Inp1(TXD1), 	.sr_adr(sr_adr_rx),
				.clk(clk), 		.ce_wr(ok_rx));

endmodule
