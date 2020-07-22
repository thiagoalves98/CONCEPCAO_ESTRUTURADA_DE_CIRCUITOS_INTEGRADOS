`timescale 1ns/100ps

module mux2_tb;
    
int counter, errors, aux_error;
logic clk,rst;
logic [4:0]d1;
logic [4:0]d0;
logic s;
logic [4:0]y,y_esperado;
logic [15:0]vectors[4]; 

mux2 dut(.d1(d1), .d0(d0), .s(s), .y(y));

initial begin
	$display("Iniciando Testbench");
	$display("|   D0    |    D1   |  S  |   Y     |  Y_esperado  |"); 
	$display("|---------|---------|-----|---------|--------------|");
	$readmemb("mux2_tv.tv",vectors);
	counter=0; errors=0;
	rst = 1; 
	#14; 
	rst = 0;		
end
		
always begin
    clk=1; #9; 
	 clk=0; #5;
end

always @(posedge clk)
	if(~rst)
	begin
		//Atribui valores do vetor nas entradas do DUT e nos valores esperados
		{d1, d0, s ,y_esperado} = vectors[counter];	
	end

always @(negedge clk)	//Sempre (que o clock descer)
		if(~rst)
		begin
			aux_error = errors;
	
		assert (y === y_esperado)
		
		else	errors = errors + 1;
	
		if(aux_error === errors)
			$display("|  %b  |  %b  |  %b  |  %b  |  %b  | OK",    d0, d1, s, y, y_esperado);
		else
			$display("|  %b  |  %b  |  %b  |  %b  |  %b  | ERROR", d0, d1, s, y, y_esperado);

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
 