`timescale 1ns/100ps

module mux2_tb;
    
int counter, errors, aux_error;
logic clk,rst;
logic [3:0] d0,d1;
logic s;
logic ns;
logic [3:0] y,y_esperado;
logic [12:0]vectors[2]; 
mux dut(d0, d1, s, y);

initial begin
	$display("Iniciando Testbench");
	$display("| D0 | D1 | S | Y |"); 
	$display("---------------");
	$readmemb("mux2.tv",vectors);
	counter=0; errors=0;
	rst = 1; #33; rst = 0;		

end
		
always
    begin
    clk=1; #30; //O clock em 1 durará 7ns
	clk=0; #5; //O clock em 0 durará 5ns
    end

always @(posedge clk)	//Sempre (que o clock subir)
	if(~rst)
	begin
		//Atribui valores do vetor nas entradas do DUT e nos valores esperados
		{d0,d1,s,y_esperado} = vectors[counter];	
	end

always @(negedge clk)	//Sempre (que o clock descer)
		if(~rst)
		begin
			aux_error = errors;
			for(int i = 0; i < 4; i++) begin
				assert (y[i] === y_esperado[i])
		else	
		begin
			//Mostra mensagem de erro se a saída do DUT for diferente da saída esperada
			$display("Error: input in position %d = %b", i, d0[i]);
			$display("%d OPÇÃO , output = %b, (%b expected)",s, y[i], y_esperado[i]);
						
			errors = errors + 1; //Incrementa contador de erros a cada bit errado encontrado
			end
		end
		if(aux_error === errors)
			$display("| %b | %b | %b | %b | OK", d0, d1, s, y);
		else
			$display("| %b | %b | %b | %b | ERROR", d0, d1, s, y);

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