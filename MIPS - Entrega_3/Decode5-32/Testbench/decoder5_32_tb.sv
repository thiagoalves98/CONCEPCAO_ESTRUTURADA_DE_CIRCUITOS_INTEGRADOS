`timescale 1ns/100ps

module decoder5_32_tb;
    
int counter, errors, aux_error;
logic clk,rst;
logic [0:4]a;
logic [0:31][0:0]y, y_esperado;
logic [0:36]vectors[31]; 

decoder5_32 dut(.a(a), .y(y));

initial 
begin
	$display("Iniciando Testbench"); 
	$display("|Entrada|      Saidas         |         Saidas esperadas          |");
	$display("|-------|---------------------|-----------------------------------|");
	$display("|   A   | Y0 | Y1 | ... | Y31 | Yesp0   | Yesp1   | ... | Yesp31  |"); 
	$readmemb("decoder5_32_tv.tv",vectors);
	counter=0; errors=0;
	rst = 1; 
	#16; 
	rst = 0;
end
		
always 

begin
   clk=1; #11; 
	clk=0; #5; 
end

always @(posedge clk)	//Sempre (que o clock subir)
	if(~rst)
	begin
	
		//Carrega os bits de entrada
		for(int i = 0; i < 5; i=i+1) begin
			a[i] = vectors[counter][i];
		end
		//Carrega as saidas esperadas
		for(int i = 5; i < 37; i=i+1) begin
			y_esperado[i-5][0:0] = vectors[counter][i];
		end
		
	end

always @(negedge clk)	//Sempre (que o clock descer)
		
	if(~rst) 
	begin
		aux_error = errors;
		assert (y === y_esperado)
	else
	begin
		errors = errors + 1; //Incrementa contador de erros a cada bit errado encontrado
	end
				
	if(aux_error === errors)
	begin
		$display("| %b | %b  | %b  | ... | %b   |    %b    |    %b    | ... |    %b    | OK",  a, y[0][0:0], y[1][0:0], y[31][0:0], y_esperado[0][0:0], y_esperado[1][0:0], y_esperado[31][0:0]);
	end
	else
		$display("| %b | %b  | %b  | ... | %b   |    %b    |    %b    | ... |    %b    | ERRO", a, y[0][0:0], y[1][0:0], y[31][0:0], y_esperado[0][0:0], y_esperado[1][0:0], y_esperado[31][0:0]);
		counter++;	//Incrementa contador dos vertores de teste
			
		if(counter == $size(vectors)) //Quando os vetores de teste acabarem
		begin
			$display("Testes Efetuados  = %0d", counter);
			$display("Erros Encontrados = %0d", errors);
			#15
			$stop;
		end
	end	

 endmodule
 