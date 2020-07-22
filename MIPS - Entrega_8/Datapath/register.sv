module register(input logic [4:0]RA, input logic [4:0]RB, input logic [4:0]RW, input logic busW, en, clk,  reset,  
					 output logic busA, busB);
					
	logic [31:0]out_dec;
	logic [31:0]out_and;
	logic [31:0]out_bank;
	
	decoder5_32 d(RW, out_dec);
	
	genvar i;
	
	generate
	for(i = 0; i < 32; i=i+1)begin : registradores
		and an_(out_and[i], en, out_dec[i]);
		registradorEnReset flop_(clk, reset, out_and[i], busW, out_bank[i]);
	end
	endgenerate
	
	mux32 m1(out_bank[0],
				out_bank[1],
				out_bank[2],
				out_bank[3],
				out_bank[4],
				out_bank[5],
				out_bank[6],
				out_bank[7],
				out_bank[8],
				out_bank[9],
				out_bank[10],
				out_bank[11],
				out_bank[12],
				out_bank[13],
				out_bank[14],
				out_bank[15],
				out_bank[16],
				out_bank[17],
				out_bank[18],
				out_bank[19],
				out_bank[20],
				out_bank[21],
				out_bank[22],
				out_bank[23],
				out_bank[24],
				out_bank[25],
				out_bank[26],
				out_bank[27],
				out_bank[28],
				out_bank[29],
				out_bank[30],
				out_bank[31],
				RA, busA);
				
	mux32 m2(out_bank[0],
				out_bank[1],
				out_bank[2],
				out_bank[3],
				out_bank[4],
				out_bank[5],
				out_bank[6],
				out_bank[7],
				out_bank[8],
				out_bank[9],
				out_bank[10],
				out_bank[11],
				out_bank[12],
				out_bank[13],
				out_bank[14],
				out_bank[15],
				out_bank[16],
				out_bank[17],
				out_bank[18],
				out_bank[19],
				out_bank[20],
				out_bank[21],
				out_bank[22],
				out_bank[23],
				out_bank[24],
				out_bank[25],
				out_bank[26],
				out_bank[27],
				out_bank[28],
				out_bank[29],
				out_bank[30],
				out_bank[31],
				RB, busB);
				
endmodule


