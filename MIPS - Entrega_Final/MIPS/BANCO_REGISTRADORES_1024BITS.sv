module MIPS_REGFILE_1(input logic [31:0] WriteCode,
							 input logic [4:0] SelA, SelB,
							 input logic RegWrite, reset, clock, RegData,
							 output logic OutA, OutB);

	genvar i;
	logic [31:0] WriteEnable;
	logic [31:0] RegQ;
	
	assign RegQ[0] = 1'b0; //registrador $0 é sempre zero
	generate
	
		for(i = 1; i < 32; i++) begin : GENERATE_REGS
		
			and(WriteEnable[i], WriteCode[i], RegWrite);
			MIPS_REG_1 REG_INSTANCE(RegData, WriteEnable[i], reset, clock, RegQ[i]);
			
		end
		
	endgenerate
	
	MIPS_MUX32_1 MUX_A_INSTANCE(RegQ, SelA, OutA);
	MIPS_MUX32_1 MUX_B_INSTANCE(RegQ, SelB, OutB);
endmodule
