module MIPS_REGFILE_32(input logic [31:0] WD3,
							  input logic [4:0] A1, A2, A3,
							  input logic WE3, reset, clock,
							  output logic [31:0] RD1, RD2);

	logic [31:0]WriteCode;
	
	MIPS_FILEDECODER_32 DECODER_INSTANCE(A3, WriteCode);
				
	genvar i;
	generate
		for(i = 0; i < 32; i++) begin : FILE_GENERATE_LOOP
			MIPS_REGFILE_1 REGFILE_INSTANCE(WriteCode, A1, A2, WE3, 
													 reset, clock, WD3[i], RD1[i], RD2[i]);
		end
	endgenerate


endmodule
