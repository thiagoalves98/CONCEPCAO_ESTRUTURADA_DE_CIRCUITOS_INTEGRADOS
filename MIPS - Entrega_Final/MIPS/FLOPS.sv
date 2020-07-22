module MIPS_TWOREGWE_32(input logic [31:0] dA, dB,
								input logic reset, clock,
								output logic [31:0] qA, qB);
								
	MIPS_REGWE_32 REGA(dA, reset, clock, qA);
	MIPS_REGWE_32 REGB(dB, reset, clock, qB);

endmodule
