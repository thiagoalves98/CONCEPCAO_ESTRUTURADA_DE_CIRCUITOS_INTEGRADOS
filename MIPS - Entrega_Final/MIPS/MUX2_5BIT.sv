module MIPS_MUX2_5(input logic [4:0] a, b,
						 input logic sel,
						 output logic [4:0]s);
						 
		assign s = sel ? b : a;
		
endmodule
