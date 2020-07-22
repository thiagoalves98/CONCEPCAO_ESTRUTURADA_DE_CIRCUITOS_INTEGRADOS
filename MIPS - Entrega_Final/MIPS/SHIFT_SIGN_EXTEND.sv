module MIPS_SHIFT2_SIGEXT_32(input logic [15:0] In, output logic [31:0] Out);

	logic [31:0] a;
	
	MIPS_SIGEXT_32 SIGEXT_INSTANCE(In, a);
	
	MIPS_SHIFT2_32 SHIFT2_INSTANCE(a, Out);
	
endmodule
