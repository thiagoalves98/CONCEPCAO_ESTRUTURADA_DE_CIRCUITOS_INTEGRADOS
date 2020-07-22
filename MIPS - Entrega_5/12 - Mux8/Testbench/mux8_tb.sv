`timescale 1ns/100ps

module mux8_tb;
    
int counter, errors, aux_error;
logic clk,rst;
logic [7:0]d;
logic [2:0]s;
logic y,y_esperado;
logic [11:0]vectors[16]; 

mux8 dut(.d(d), .s(s), .y(y));

initial begin
	$display("Iniciando Testbench");
	$display("|      D     |   S   |  Y  |  Y_esperado  |"); 
	$display("|------------|-------|-----|--------------|");
	$readmemb("mux8_tv.tv",vectors);
	counter=0; errors=0;
	rst = 1; 
	#16; 
	rst = 0;
end
		
always begin
    clk=1; #11; 
	 clk=0; #5;
end

always @(posedge clk)
	if(~rst)
	begin
		//Atribui valores do vetor nas entradas do DUT e nos valores esperados
		{d,s,y_esperado} = vectors[counter];	
	end

always @(negedge clk)	//Sempre (que o clock descer)
		if(~rst)
		begin
			aux_error = errors;
	
		assert (y === y_esperado)
		
		else	errors = errors + 1;
	
		if(aux_error === errors)
			$display("|  %b  |  %b  |  %b  |      %b       | OK",  d, s, y, y_esperado);
		else
			$display("|  %b  |  %b  |  %b  |      %b       | ERROR", d, s, y, y_esperado);

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
 