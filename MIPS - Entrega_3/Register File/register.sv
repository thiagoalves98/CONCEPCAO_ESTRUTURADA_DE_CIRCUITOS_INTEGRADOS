module register(input logic [0:4]RW, input logic en, input logic clk, input logic busW, input logic [0:4]RA, input logic [0:4]RB,
					 output logic busA, output logic busB);
					
	logic [0:31][0:0]out_dec;
	logic [0:31][0:0]out_and;
	logic [0:31][0:0]out_bank;
	
	//Entra com um array de 5bits no decodificador e salva a saida em um array de 32bits
	decoder5_32 d(RW, out_dec);
	
	//Faz um And (bit a bit) da saida do decodificador com o en e salva em um  array de 32bits
	genvar i;
	
	generate
	for(i = 0; i < 32; i=i+1)begin : registradores
		and an2(out_and[i], en, out_dec[i][0:0]);
	end
	endgenerate
	
	//Entra com um array de 32bits  no banco e salva a saida em um array de 32bits
	bank b(clk, 0, out_and, busW, out_bank);

	//Entra com um array de 5bits e um array de 32bits (saida do banco)
	mux32 m1(RA, out_bank, busA);
	mux32 m2(RB, out_bank, busB);
			
endmodule
