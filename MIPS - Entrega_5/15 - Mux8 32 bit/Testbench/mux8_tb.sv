`timescale 1ns/100ps

module mux8_tb;
    
int counter, errors, aux_error;
logic clk,rst;
logic [31:0]d0; 
logic [31:0]d1;
logic [31:0]d2; 
logic [31:0]d3;
logic [31:0]d4;
logic [31:0]d5; 
logic [31:0]d6; 
logic [31:0]d7;
logic [2:0]s;
logic [31:0]y,y_esperado;

logic [290:0]vectors[8]; 

mux8 dut(.d7(d7), .d6(d6), .d5(d5), .d4(d4), .d3(d3), .d2(d2), .d1(d1), .d0(d0), .s(s), .y(y));

initial begin
	$display("Iniciando Testbench");
	$display("   |                D                   |   S   |                Y                   |             Y_esperado             |"); 
	$display("   |------------------------------------|-------|------------------------------------|------------------------------------|");
	$readmemb("mux8_tv.tv",vectors);
	counter=0; errors=0;
	rst = 1; 
	#40; 
	rst = 0;		
end
		
always begin
    clk=1; #30; 
	 clk=0; #10;
end

always @(posedge clk)
	if(~rst)
	begin
		//Atribui valores do vetor nas entradas do DUT e nos valores esperados
		{d7, d6, d5, d4, d3, d2, d1, d0, s, y_esperado} = vectors[counter];	
	end

always @(negedge clk)	//Sempre (que o clock descer)
		if(~rst)
		begin
			aux_error = errors;
	
		assert (y === y_esperado)
		
		else	errors = errors + 1;
	
		if(aux_error === errors)begin
			$display("D0 |  %b  |  %b  |  %b  |  %b  | OK",   d0, s, y, y_esperado);
			$display("D1 |  %b  |",   d1);
			$display("D2 |  %b  |",   d2);
			$display("D3 |  %b  |",   d3);
			$display("D4 |  %b  |",   d4);
			$display("D5 |  %b  |",   d5);
			$display("D6 |  %b  |",   d6);
			$display("D7 |  %b  |",   d7);
			$display(" ");
		end
		else begin
			$display("D0 |  %b  |  %b  |  %b  |  %b  | ERRO", d0, s, y, y_esperado);
			$display("D1 |  %b  |",   d1);
			$display("D2 |  %b  |",   d2);
			$display("D3 |  %b  |",   d3);
			$display("D4 |  %b  |",   d4);
			$display("D5 |  %b  |",   d5);
			$display("D6 |  %b  |",   d6);
			$display("D7 |  %b  |",   d7);
			$display(" ");
		end
		
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
 