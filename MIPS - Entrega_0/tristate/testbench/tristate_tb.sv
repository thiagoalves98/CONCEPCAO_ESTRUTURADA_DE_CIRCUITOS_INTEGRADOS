`timescale 1ns/100ps

module tristate_tb;
    
int counter, errors, aux_error;
logic clk,rst;
logic [3:0] a;
logic enable;
logic [3:0] y,y_esperado;
logic [8:0]vectors[32]; 

tristate dut(a, enable, y);

initial begin
	$display("Iniciando Testbench");
	$display("|  E  |  A  |  Y  |"); 
	$readmemb("tristate.tv",vectors);
	counter=0; errors=0;
	rst = 1; #33; rst = 0;			
end
		
always
    begin
    clk=1; #12; 
	clk=0; #5;
    end

always @(posedge clk)	
	if(~rst)
	begin
		{enable,a,y_esperado} = vectors[counter];	
	end

always @(negedge clk)	
		if(~rst)
		begin
			aux_error = errors;
			for(int i = 0; i < 4; i++) begin
				assert (y[i] === y_esperado[i])
		else	
		begin
			$display("Error: input in position %d = %b", i, a[i]);
			$display("%d ERRO, output = %b, %b expected",enable, y[i], y_esperado[i]);						
			errors = errors + 1; 
			end
		end
		if(aux_error === errors)
			$display("| %b | %b | %b | OK", enable, a, y);
		else
			$display("| %b | %b | %b | ERROR",  enable, a, y);
			counter++;				
			if(counter == $size(vectors)) 
			begin
				$display("Testes Efetuados  = %0d", counter);
				$display("Erros Encontrados = %0d", errors);
				#10
				$stop;
			end
			
		end
		
 endmodule 