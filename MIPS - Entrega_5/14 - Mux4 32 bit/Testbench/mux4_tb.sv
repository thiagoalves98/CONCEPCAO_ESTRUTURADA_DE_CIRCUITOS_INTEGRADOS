`timescale 1ns/100ps

module mux4_tb;
    
int counter, errors, aux_error;
logic clk,rst;
logic [31:0]d0;
logic [31:0]d1;
logic [31:0]d2;
logic [31:0]d3;
logic [1:0]s;
logic [31:0]y,y_esperado;
logic [161:0]vectors[8]; 

mux4 dut(.d3(d3), .d2(d2), .d1(d1), .d0(d0), .s(s), .y(y));

initial begin
	$display("Iniciando Testbench");
	$display("   |                D                   |  S   |                Y                   |             Y_esperado             |"); 
	$display("   |------------------------------------|------|------------------------------------|------------------------------------|");
	
	$readmemb("mux4_tv.tv",vectors);
	counter=0; errors=0;
	rst = 1; 
	#15;
	rst = 0;		
end
		
always begin
   clk=1; #10; 
	clk=0; #5; 
end

always @(posedge clk)	//Sempre (que o clock subir)
	if(~rst)
	begin	
		{d3, d2, d1, d0, s, y_esperado} = vectors[counter];	
	end

always @(negedge clk)	//Sempre (que o clock descer)
		if(~rst)
		begin
			aux_error = errors;
			
		assert (y === y_esperado)
		
		else	errors = errors + 1; //Incrementa contador de erros a cada bit errado encontrado
			
		if(aux_error === errors)begin
			$display("D0 |  %b  |  %b  |  %b  |  %b  | OK",   d0, s, y, y_esperado);
			$display("D1 |  %b  |",   d1);
			$display("D2 |  %b  |",   d2);
			$display("D3 |  %b  |",   d3);
			$display(" ");
		end
		else begin
			$display("D0 |  %b  |  %b  |  %b  |  %b  | ERRO", d0, s, y, y_esperado);
			$display("D1 |  %b  |",   d1);
			$display("D2 |  %b  |",   d2);
			$display(" ");
		end
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
 