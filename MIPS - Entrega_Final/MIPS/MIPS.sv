module mips(input logic [31:0] MemoryRD,
				input logic clock, reset,
				output logic [31:0] MemoryAddress, MemoryWD,
				output logic MemoryWE);
				
	
	
	logic [5:0] funct, opcode;
	logic [2:0] ALUControl;
	logic [1:0] ALUSrcB, PCSrc;
	logic IorD, IRWrite, RegDst, MemtoReg;
	logic RegWrite, ALUSrcA, Branch, PCWrite;
	logic BranchNE;
	
	MIPS_FSM CONTROL_UNIT(funct, opcode, clock, reset, ALUControl, ALUSrcB, PCSrc,
								IorD, IRWrite, RegDst, MemtoReg, RegWrite, ALUSrcA, Branch,
								PCWrite, MemoryWE, BranchNE);
	
			
	MIPS_DATAPATH DATAPATH(MemoryRD, ALUControl, ALUSrcB, PCSrc, IorD, IRWrite, RegDst,
								  MemtoReg, RegWrite, ALUSrcA, Branch, PCWrite, reset, clock, BranchNE,
								 MemoryAddress, MemoryWD, opcode, funct);
	
endmodule
	
	