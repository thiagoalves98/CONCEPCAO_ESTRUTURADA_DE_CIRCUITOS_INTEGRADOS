module MIPS_MUX2_1(input logic Zero, nZero, BranchNE, output logic Z);

	assign Z = BranchNE ? nZero : Zero;

endmodule
