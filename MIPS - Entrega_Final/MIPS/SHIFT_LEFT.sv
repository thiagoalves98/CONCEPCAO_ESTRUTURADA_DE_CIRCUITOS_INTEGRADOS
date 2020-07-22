module MIPS_SHIFT2_32(input [31:0] a, output [31:0] s);
	
	assign s = { a[29:0], 2'b00 } ;
	
endmodule
