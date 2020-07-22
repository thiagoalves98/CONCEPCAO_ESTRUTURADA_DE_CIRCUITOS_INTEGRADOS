`timescale 1ns/100ps

module controle_tb;
    
int counter, errors, aux_error;
//entradas
logic clk,rst,clk_tb,rst_tb;
logic [5:0]opcode, funct;
//saidas
logic MemtoReg, RegDst, IorD, ALUSrcA, IRWrite, MemWrite, PCWrite, Branch, RegWrite, BranchNE;
logic [1:0]PCSrc, ALUSrcB;
logic [2:0]ALUControl;
//saidas esperadas
logic MemtoReg_esperado, RegDst_esperado, IorD_esperado, ALUSrcA_esperado, IRWrite_esperado, MemWrite_esperado, PCWrite_esperado, Branch_esperado, RegWrite_esperado, BranchNE_esperado;
logic [1:0]PCSrc_esperado, ALUSrcB_esperado; 
logic [2:0]ALUControl_esperado;

logic [30:0]vectors[126]; 

controle dut(.clk(clk),.rst(rst),.opcode(opcode),.funct(funct),.MemtoReg(MemtoReg),.RegDst(RegDst),.IorD(IorD),.ALUSrcA(ALUSrcA),.IRWrite(IRWrite),
.MemWrite(MemWrite),.PCWrite(PCWrite),.Branch(Branch),.RegWrite(RegWrite),.BranchNE(BranchNE),.PCSrc(PCSrc),.ALUSrcB(ALUSrcB),.ALUControl(ALUControl));
initial begin
	$display("Iniciando Testbench");
	$display("|clk|rst| opcode | funct  |ALUControl|ALUSrcA|ALUSrcB|Branch|IorD|IRWrite|MemtoReg|PCSrc|PCWrite|RegDst|RegWrite|MemWrite|BranchNE|"); 
	$readmemb("controle_tv.tv",vectors);
	counter=0; errors=0;
	rst_tb = 1; 
	#14; 
	rst_tb = 0;			
end
		
always
    begin
    clk_tb=1; #9; 
	clk_tb=0; #5;
    end

always @(posedge clk_tb)	
	begin
		{clk,rst,opcode,funct,ALUControl_esperado,ALUSrcA_esperado,ALUSrcB_esperado,Branch_esperado,IorD_esperado,IRWrite_esperado,MemtoReg_esperado,PCSrc_esperado,PCWrite_esperado,RegDst_esperado,RegWrite_esperado,MemWrite_esperado,BranchNE_esperado} = vectors[counter];	
	end

always @(negedge clk_tb)	
		if(~rst_tb)
		begin
			aux_error = errors;
			assert (MemtoReg === MemtoReg_esperado)
			else	
			begin
					$display("Error MemtoReg: %b, expected %b", MemtoReg, MemtoReg_esperado);
			
			errors = errors + 1; 
			end
			assert (RegDst === RegDst_esperado)
			else	
			begin
					$display("Error RegDst: %b, expected %b", RegDst, RegDst_esperado);
			
			errors = errors + 1; 
			end
			assert (IorD === IorD_esperado)
			else	
			begin
					$display("Error IorD: %b, expected %b", IorD, IorD_esperado);
			
			errors = errors + 1; 
			end
			assert (PCSrc === PCSrc_esperado)
			else	
			begin
					$display("Error PCSrc: %b, expected %b", PCSrc, PCSrc_esperado);
			
			errors = errors + 1; 
			end
			assert (ALUSrcA === ALUSrcA_esperado)
			else	
			begin
					$display("Error ALUSrcA: %b, expected %b", ALUSrcA, ALUSrcA_esperado);
			
			errors = errors + 1; 
			end
			assert (IRWrite === IRWrite_esperado)
			else	
			begin
					$display("Error IRWrite: %b, expected %b", IRWrite, IRWrite_esperado);
			
			errors = errors + 1; 
			end
			assert (MemWrite === MemWrite_esperado)
			else	
			begin
					$display("Error MemWrite: %b, expected %b", MemWrite, MemWrite_esperado);
			
			errors = errors + 1; 
			end
			assert (PCWrite === PCWrite_esperado)
			else	
			begin
					$display("Error PCWrite: %b, expected %b", PCWrite, PCWrite_esperado);
			
			errors = errors + 1; 
			end
			assert (Branch === Branch_esperado)
			else	
			begin
					$display("Error Branch: %b, expected %b", Branch, Branch_esperado);
					
			errors = errors + 1; 
			end
			assert (RegWrite === RegWrite_esperado)
			else	
			begin
				$display("Error RegWrite: %b, expected %b", RegWrite, RegWrite_esperado);
			
			errors = errors + 1; 
			end
			assert (ALUSrcB === ALUSrcB_esperado)
			else	
			begin
					$display("Error ALUSrcB: %b, expected %b", ALUSrcB, ALUSrcB_esperado);
			
			errors = errors + 1; 
			end
			assert (ALUControl === ALUControl_esperado)
			else	
			begin
					$display("Error ALUControl: %b, expected %b", ALUControl, ALUControl_esperado);
			
			errors = errors + 1; 
			end
			assert (BranchNE === BranchNE_esperado)
			else	
			begin
					$display("Error BranchNE: %b, expected %b", BranchNE, BranchNE_esperado);
			
			errors = errors + 1; 
			end
			if(aux_error === errors)
				$display("| %b | %b | %b | %b |    %b    |   %b  |   %b   |   %b   |  %b   |  %b   |   %b   | %b  |   %b   |  %b   |    %b   |   %b    |   %b    | OK", clk,rst,opcode,funct,ALUControl,ALUSrcA,ALUSrcB,Branch,IorD,IRWrite,MemtoReg,PCSrc,PCWrite,RegDst,RegWrite,MemWrite,BranchNE);
			else
				$display("| %b | %b | %b | %b |    %b    |   %b  |   %b   |   %b   |  %b   |  %b   |   %b   | %b  |   %b   |  %b   |    %b   |   %b    |   %b    | ERROR", clk,rst,opcode,funct,ALUControl,ALUSrcA,ALUSrcB,Branch,IorD,IRWrite,MemtoReg,PCSrc,PCWrite,RegDst,RegWrite,MemWrite,BranchNE);
			counter++;				
			if(counter == $size(vectors)) 
				begin
					$display("Testes Efetuados  = %0d", counter);
					$display("Erros Encontrados = %0d", errors);
					$stop;
				end
		end		
 endmodule 