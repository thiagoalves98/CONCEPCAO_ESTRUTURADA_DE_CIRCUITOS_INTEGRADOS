`timescale 1ns/100ps

module flopenr32_tb;
    
int counter, errors, aux_error;
logic clk,rst;
logic clk2,rst2;
logic [31:0]d;
logic en;
logic [31:0]q, q_esperado;
logic [66:0]vectors[16]; 

flopenr32 dut(.clk(clk2), .reset(rst2), .en(en), .d(d), .q(q));

initial begin
	$display("Iniciando Testbench");
	$display("|  CLK  |  RST  |  EN  |                 D                  |                 Q                  |              Q_esperado            |"); 
	$display("|-------|-------|------|------------------------------------|------------------------------------|------------------------------------|");
	$readmemb("flopenr32_tv.tv",vectors);
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
		{clk2,rst2,en,d,q_esperado} = vectors[counter];	
	end

always @(negedge clk)	//Sempre (que o clock descer)
		if(~rst)
		begin
			aux_error = errors;
			assert (q === q_esperado)
			
		else errors = errors + 1; //Incrementa contador de erros a cada bit errado encontrado
		
		if(aux_error === errors)
			$display("|   %b   |   %b   |  %b   |  %b  |  %b  |      %b       | OK", clk2, rst2, en, d, q, q_esperado);
		else
			$display("|   %b   |   %b   |  %b   |  %b  |  %b  |      %b       | ERRO", clk2, rst2, en, d, q, q_esperado);

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
 