`timescale 1ns/100ps

module shiftpc_tb;
    
int counter, errors, aux_error;
logic clk,rst;
logic [25:0]a;
logic [3:0]pc;
logic [31:0]y,y_esperado;

logic [61:0]vectors[4]; 

shiftpc dut(.pc(pc), .a(a), .y(y));

initial begin
	$display("Iniciando Testbench");
	$display("|              A               |   PC   |               Y                    |           Y_esperado               |"); 
	$display("|------------------------------|--------|------------------------------------|------------------------------------|");
	$readmemb("shiftpc_tv.tv",vectors);
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
		{pc, a ,y_esperado} = vectors[counter];	
	end

always @(negedge clk)	//Sempre (que o clock descer)
		if(~rst)
		begin
			aux_error = errors;
	
		assert (y === y_esperado)
		
		else	errors = errors + 1;
	
		if(aux_error === errors)
			$display("|  %b  |  %b  |  %b  |  %b  | OK",    a, pc, y, y_esperado);
		else
			$display("|  %b  |  %b  |  %b  |  %b  | ERROR", a, pc, y, y_esperado);

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
 