module MIPS_FILEDECODER_32(input logic [4:0] select,
									output logic [31:0] out);
									
	always_comb begin
		out = 32'b0;
		out[select] = 1'b1;
	end
	
endmodule
