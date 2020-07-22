module MIPS_DATAPATH(input logic [31:0] MemoryRD,
							input logic [2:0] ALUControl,
							input logic [1:0] ALUSrcB, PCSrc,
							input logic IorD, IRWrite, RegDst, MemtoReg,
							RegWrite, ALUSrcA, Branch, PCWrite, reset, clock, BranchNE,
							output logic [31:0] MemoryAddress, MemoryWD,
							output logic [5:0] Op, Funct);
		
	logic [31:0] PCl, PC, Instr, Data, ALUOut, WD3;
	logic [31:0] A, B, RD1, RD2, SignImm, SignImm2, SrcA, SrcB;
	logic [31:0] ALUResult, PCJump;
	logic [4:0] A3;
	logic PCEn, Zero, ZBranch;
	logic nZero, Z;
	
	//Flop de 32 bits
	MIPS_REG_32 PC_REG(PCl, PCEn, reset, clock, PC);
	
	//Mux de 32 bits 
	MIPS_MUX2_32 MUX_INSTR_OR_DATA(PC, ALUOut, IorD, MemoryAddress);
	
	//Flop de 32 bits
	MIPS_REG_32 INSTR_REG(MemoryRD, IRWrite, reset, clock, Instr);
	
	//Flop de 32 bits
	MIPS_REGWE_32 DATA_REG(MemoryRD, reset, clock, Data);
	
	assign Op = Instr[31:26];
	assign Funct = Instr[5:0];
	
	//Mux de 5 bits
	MIPS_MUX2_5 MUX_REGDST(Instr[20:16], Instr[15:11], RegDst, A3);
	
	//Mux de 32 bits 
	MIPS_MUX2_32 MUX_MEMTOREG(ALUOut, Data, MemtoReg, WD3);
	
	//Banco de Registradores de 32 bits
	MIPS_REGFILE_32 REGISTER_FILE(WD3, Instr[25:21], Instr[20:16], A3, RegWrite, reset, clock, RD1, RD2);
	
	//2 Registradores da saida do banco 
	MIPS_TWOREGWE_32 AB_REG(RD1, RD2, reset, clock, A, B);
	
	assign MemoryWD = B;
	
	//Extensor de sinal
	MIPS_SIGEXT_32 SIGN_EXTEND(Instr[15:0], SignImm);
	
	//Deslocador
	//MIPS_SHIFT2_SIGEXT_32 SIGN_EXTEND_SFT2(Instr[15:0], SignImm2);
	MIPS_SHIFT2_SIGEXT_32 SIGN_EXTEND_SFT2(SignImm, SignImm2);
	
	//2 Mux da saida do banco de registradores
	MIPS_MUX2_32 MUX_ALUSRCA(PC, A, ALUSrcA, SrcA);
	MIPS_MUX4_32 MUX_ALUSRCB(B, 32'b00000000000000000000000000000100, SignImm, SignImm2, ALUSrcB[0], ALUSrcB[1], SrcB);
	
	//ULA
	MIPS_ALU_32 ALU(SrcA, SrcB, ALUControl, ALUResult, Zero, );
	
	//Mux da nova instrucao
	assign nZero = ~Zero;
	//Interface (D0, D1, Controle, Saida)
	MIPS_MUX2_1 MUX_ZERO(Zero, nZero, BranchNE, Z);
	
	and(ZBranch, Z, Branch);
	
	or(PCEn, PCWrite, ZBranch);
	
	//Flop de 32 bits da ULA
	MIPS_REGWE_32 REG_ALUResult(ALUResult, reset, clock,  ALUOut);
	
	//Deslocador PC
	MIPS_SHIFT2PC_32 SHIFT_PCJUMP(PC[31:28], Instr[25:0], PCJump);
	
	//Mux 4
	MIPS_MUX4_32 MUX_PCL(ALUResult, ALUOut, PCJump, PCJump, PCSrc[0], PCSrc[1], PCl);

endmodule

	
	
	