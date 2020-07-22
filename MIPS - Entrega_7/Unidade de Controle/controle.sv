module controle(
							input clk, rst,
							input logic [5:0]opcode, funct,
							output logic MemtoReg, RegDst, IorD, ALUSrcA, IRWrite, MemWrite, PCWrite, Branch, RegWrite, BranchNE,
							output logic [1:0]PCSrc, ALUSrcB, 
							output logic [2:0]ALUControl);
							
logic [2:0]ALUOp;

fsm fsm(.clk(clk),.rst(rst),.opcode(opcode),.MemtoReg(MemtoReg),.RegDst(RegDst),.IorD(IorD),.ALUSrcA(ALUSrcA),.IRWrite(IRWrite),
.MemWrite(MemWrite),.PCWrite(PCWrite),.Branch(Branch),.RegWrite(RegWrite),.BranchNE(BranchNE),.PCSrc(PCSrc),.ALUSrcB(ALUSrcB),.ALUOp(ALUOp));

alu_decoder alu_decoder(.funct(funct),.ALUOp(ALUOp),.ALUControl(ALUControl));

endmodule
