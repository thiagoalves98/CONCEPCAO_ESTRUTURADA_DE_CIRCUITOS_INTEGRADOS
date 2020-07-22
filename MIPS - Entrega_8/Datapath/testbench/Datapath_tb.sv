`timescale 1ns/10ps

module Datapath_tb;

	logic clk, reset;
	logic ck, reset_;
	int counter, errors, aux_error;
	logic IorD, RegDest, MemtoReg, IRWrite, RegWrite, ALUSrcA, Branch, PCWrite;
	logic[1:0] ALUSrcB, PCSrc;
	logic[2:0] ALUControl;
	logic[31:0] RD;
	logic[31:0] Adr;
	logic[31:0] WD;
	logic overflow;
	logic[31:0] Adr_expected;
	logic[31:0] WD_expected;
	logic overflow_expected;
	logic [113:0] testvectors[32];
	
	Datapath duv(.ck(ck), .reset_(reset), .IorD(IorD), .RegDest(RegDest), .MemtoReg(MemtoReg), .IRWrite(IRWrite), 
					 .RegWrite(RegWrite), .ALUSrcA(ALUSrcA), .ALUSrcB(ALUSrcB), .ALUControl(ALUControl), .PCSrc(PCSrc), 
					 .Branch(Branch), .PCWrite(PCWrite), .WD(WD), .Adr(Adr), .RD(RD), .overflow(overflow));
	initial begin
		$display("Iniciando Testbench");
		$readmemb("Datapath.tv",testvectors);
		counter=0; errors=0;
		reset = 1; 
		#16; 
		reset = 0;		
	end
	
	always begin
		clk=1; #11; 
		clk=0; #5;
	end
		
	always @(posedge clk)begin
		if(~reset)begin
			//Atribui valores do vetor nas entradas do DUT e nos valores esperados
			{ck, reset_, IorD, IRWrite, RegDest, MemtoReg, RegWrite, ALUSrcA, ALUSrcB, ALUControl, Branch, PCWrite, PCSrc, RD, Adr_expected, WD_expected, overflow_expected} = testvectors[counter];	
		end
	end
	
	always @(negedge clk)begin	
		if(~reset)begin
		
			aux_error = errors;
			
			assert (Adr === Adr_expected)
			else	
			begin
				$display(" Adr = %b, %b expected", Adr, Adr_expected);
				errors = errors + 1; 
			end
			
			assert (WD === WD_expected)
			else	
			begin
				$display(" WD = %b, %b expected", WD, WD_expected);
				errors = errors + 1; 
			end
			
			assert (overflow === overflow_expected)
			else	
			begin
				$display("overflow = %b, %b expected", overflow, overflow_expected);
				errors = errors + 1; 
			end
			
			if(aux_error === errors)begin
				$display("| ck | reset | IorD | RegDest | MemtoReg | IRWrite | RegWrite | ALUSrcA | Branch | PCWrite | ALUSrcB | PCSrc | ALUControl |");
				$display("| %b  |   %b   |  %b   |    %b    |    %b     |    %b    |     %b    |    %b    |   %b    |   %b     |   %b    |  %b   |    %b     |", ck, reset_, IorD, RegDest, MemtoReg, IRWrite, RegWrite, ALUSrcA, Branch, PCWrite, ALUSrcB, PCSrc, ALUControl);
				$display("|               RD                 |              Adr                 |               WD                 | Overflow |");
				$display("| %b | %b | %b |    %b     | OK", RD, Adr, WD, overflow);
				$display(" ");
			end
			else begin
				$display("| ck | reset | IorD | RegDest | MemtoReg | IRWrite | RegWrite | ALUSrcA | Branch | PCWrite | ALUSrcB | PCSrc | ALUControl |");
				$display("| %b  |   %b   |  %b   |    %b    |    %b     |    %b    |     %b    |    %b    |   %b    |   %b     |   %b    |  %b   |    %b     |", ck, reset_, IorD, RegDest, MemtoReg, IRWrite, RegWrite, ALUSrcA, Branch, PCWrite, ALUSrcB, PCSrc, ALUControl);
				$display("|               RD                 |              Adr                 |               WD                 | Overflow |");
				$display("| %b | %b | %b |    %b     | ERRO", RD, Adr, WD, overflow);
				$display(" ");
			end
			counter++;
			
			if(counter == $size(testvectors))begin
			
				$display("Testes Efetuados  = %0d", counter);
				$display("Erros Encontrados = %0d", errors);
				$stop;
			end
		end
	end

endmodule

