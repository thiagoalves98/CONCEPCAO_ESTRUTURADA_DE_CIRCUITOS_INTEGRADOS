`timescale 1ns/100ps

module mux32_tb;
    
int counter, errors, aux_error;
logic clk,rst;
logic [0:31][0:0]d;
logic [0:4]s;
logic y,y_esperado;
logic [0:37]vectors[32]; 

mux32 dut(.s(s), .d(d), .y(y));

initial begin
	$display("Iniciando Testbench");
	$display("|           Entradas                |           Controle          | Saida | Saida Esp |");
	$display("|-----------------------------------|-----------------------------|-------|-----------|");
	$display("| D0  | D1  | D2  | D3  | ... | D31 | S0  | S1  | S2  | S3  | S4  |   Y   |    Yesp   |"); 
	$readmemb("mux32_tv.tv",vectors);
	counter=0; errors=0;
	rst = 1; 
	#17; 
	rst = 0;		
end
		
always begin
    clk=1; #12; 
	 clk=0; #5;
end

always @(posedge clk)	//Sempre (que o clock subir)
	if(~rst)
	begin
		for(int i = 0; i < 5; i = i+1)begin
			s[4-i] = vectors[counter][i];
		end
		
		for(int i = 5; i < 37; i = i+1)begin
			d[i-5][0:0] = vectors[counter][i];
		end
		
		y_esperado = vectors[counter][37];
	
	end

always @(negedge clk)	//Sempre (que o clock descer)
		if(~rst)
		begin
			aux_error = errors;
			
		assert (y === y_esperado)
		else	
		begin
			//Mostra mensagem de erro se a saida do DUT for diferente da saida esperada
			errors = errors + 1; //Incrementa contador de erros a cada bit errado encontrado
		end
		
		if(aux_error === errors)
			$display("| %b   | %b   | %b   | %b   | ... | %b   | %b   | %b   | %b   | %b   | %b   |   %b   |     %b     |  OK",    d[0], d[1], d[3], d[4], d[31], s[0], s[1], s[2], s[3], s[4], y, y_esperado);
		else
			$display("| %b   | %b   | %b   | %b   | ... | %b   | %b   | %b   | %b   | %b   | %b   |   %b   |     %b     |  ERROR", d[0], d[1], d[3], d[4], d[31], s[0], s[1], s[2], s[3], s[4], y , y_esperado);
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
 