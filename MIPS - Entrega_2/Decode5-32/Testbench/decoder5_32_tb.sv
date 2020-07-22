`timescale 1ns/100ps

module decoder5_32_tb;
    
int counter, errors, aux_error;
logic clk,rst;
logic [4:0]a;
logic [31:0]y, y_esperado;
logic [36:0]vectors[32]; 

decoder5_32 dut(a, y);

initial 
begin
	$display("Iniciando Testbench");
	$display("|   A    |               Y                |"); 
	$display("-------------------------------------------");
	$readmemb("decoder5_32_tv.tv",vectors);
	counter=0; errors=0;
	rst = 1; 
	#15; 
	rst = 0;
end
		
always 

begin
   clk=1; #11; //O clock em 1 durar 1000ps
	clk=0; #5; //O clock em 0 durar 1000ps
end

always @(posedge clk)	//Sempre (que o clock subir)
	if(~rst)
	begin
		//Atribui valores do vetor nas entradas do DUT e nos valores esperados
		a = vectors[counter][36:32];
		y_esperado = vectors[counter][31:0];
	end

always @(negedge clk)	//Sempre (que o clock descer)
		
	if(~rst) 
	begin
		aux_error = errors;
		assert (y === y_esperado)
	else
	begin
		//Mostra mensagem de erro se a saada do DUT for diferente da saada esperada
		$display("Error: input in position %d = %b", counter, a);
		$display("%b OPCAOO , output = %b, (%b expected)", a, y, y_esperado);
		errors = errors + 1; //Incrementa contador de erros a cada bit errado encontrado
	end
				
		
	if(aux_error === errors)
	begin
		$display("| %b | %b | OK", a, y);
	end
	else
		$display("| %b | %b | ERROR", a, y);
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
 