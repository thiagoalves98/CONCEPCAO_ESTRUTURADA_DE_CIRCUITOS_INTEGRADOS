`timescale 1ns/100ps

module alu_tb;
    
int counter, errors, aux_error;
logic clk,rst;
logic [2:0]ALUcontrol;
logic SrcA, SrcB, cin, addSubSignal, less;
logic set, set_esperado;
logic ALUresult, ALUresult_esperado;
logic cout, cout_esperado;
logic [11:0]vectors[60]; 

alu dut(ALUcontrol, SrcA, SrcB, cin, addSubSignal, less, set, ALUresult, cout);

initial begin
	$display("Iniciando Testbench");
	$display("| ALUcontrol | SrcA | SrcB | cin | addSubSignal | less || set | set_esperado || ALUresult | ALUresult_esperado || cout | cout_esperado |"); 
	$readmemb("alu_tv.tv",vectors);
	counter=0; errors=0;
	rst = 1; 
	#15; 
	rst = 0;		
end
		
always begin
   clk=1; #10; 
	clk=0; #5;
end

always @(posedge clk)
	if(~rst)
	begin
		//Atribui valores do vetor nas entradas do DUT e nos valores esperados
		{ALUcontrol, SrcA, SrcB, cin, addSubSignal, less, set_esperado, ALUresult_esperado, cout_esperado} = vectors[counter];	
	end

always @(negedge clk)	//Sempre (que o clock descer)u
		if(~rst)
		begin
			aux_error = errors;
	
		assert ((set === set_esperado) && (ALUresult === ALUresult_esperado) && (cout === cout_esperado))
		
		else	errors = errors + 1;
		
		if(counter === 0 ) $display("|------------------------------------------------------AND-----------------------------------------------------------------------------|");
		if(counter === 8 ) $display("|------------------------------------------------------NAND----------------------------------------------------------------------------|");
		if(counter === 16) $display("|------------------------------------------------------OR------------------------------------------------------------------------------|");
		if(counter === 24) $display("|------------------------------------------------------NOR-----------------------------------------------------------------------------|");
		if(counter === 32) $display("|------------------------------------------------------XOR-----------------------------------------------------------------------------|");
		if(counter === 40) $display("|------------------------------------------------------SOMA----------------------------------------------------------------------------|");
		if(counter === 48) $display("|------------------------------------------------------SUB-----------------------------------------------------------------------------|");
		if(counter === 56) $display("|------------------------------------------------------LESS----------------------------------------------------------------------------|");
				
		if(aux_error === errors)
			$display("|    %b     |  %b   |  %b   |  %b  |     %b        |  %b   ||  %b  |     %b        ||    %b      |        %b           ||  %b   |      %b        | OK",    ALUcontrol, SrcA, SrcB, cin, addSubSignal, less, set, set_esperado, ALUresult, ALUresult_esperado, cout, cout_esperado);
		else
			$display("|    %b     |  %b   |  %b   |  %b  |     %b        |  %b   ||  %b  |     %b        ||    %b      |        %b           ||  %b   |      %b        | ERRO",    ALUcontrol, SrcA, SrcB, cin, addSubSignal, less, set, set_esperado, ALUresult, ALUresult_esperado, cout, cout_esperado);
	
			counter++;	//Incrementa contador dos vertores de teste
			
			if(counter == $size(vectors)) //Quando os vetores de teste acabarem
			begin
				$display("Testes Efetuados  = %0d", counter);
				$display("Erros Encontrados = %0d", errors);
				#10
				$stop;
			end
			
		end
		
 endmodule
 