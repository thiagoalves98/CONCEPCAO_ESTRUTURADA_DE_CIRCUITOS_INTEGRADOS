`timescale 1ns/100ps

module bank_tb;
    
int counter, errors, aux_error;
logic clk,rst;
logic clk2,rst2;
logic d;
logic [0:31][0:0]en;
logic [0:31][0:0]q, q_esperado;
logic [0:66]vectors[16]; 

bank dut(.clk(clk2), .reset(rst2), .en(en), .d(d), .q(q));

initial begin
	$readmemb("bank_tv.tv",vectors);
	$display("Iniciando Testbench");
	$display("|  CLK  |  RST  |              EN              |       SAIDA ESPERADA      |           SAIDA           |");
	$display("|-------|-------|------------------------------|---------------------------|---------------------------|");
	$display("|  CLK  |  RST  |  EN0  |  EN1  | ... |  EN31  |  QE0 | QE1   | ... | QE31 |  Q0  |  Q1  | ... |  Q31  |");
	counter=0; errors=0;
	rst = 1; 
	#11; 
	rst = 0;		
end
		
always
begin
    clk=1; #6;
	 clk=0; #5;
end

always @(posedge clk)
	if(~rst)
	begin
		clk2 = vectors[counter][0];
		rst2 = vectors[counter][1];
		
		for(int i = 2; i < 34; i=i+1)begin
			en[i-2][0:0] = vectors[counter][i];
		end
		
		d = vectors[counter][34];
		
		for(int i = 35; i < 67; i=i+1)begin
			q_esperado[i-35][0:0] = vectors[counter][i];
		end
		
	end

always @(negedge clk)	//Sempre (que o clock descer)
		if(~rst)
		begin
			aux_error = errors;
			assert (q === q_esperado)
		else	
		begin			
			errors = errors + 1; //Incrementa contador de erros a cada bit errado encontrado
			end
			
		if(aux_error === errors)
			$display("|  %b    |  %b    |  %b    |  %b    | ... |  %b     |  %b   |  %b   | ... |  %b    |  %b   |  %b   | ... |  %b    | OK", clk2, rst2, en[0], en[1], en[31], q_esperado[0], q_esperado[1], q_esperado[31], q[0], q[1], q[31]);
		else
			$display("|  %b    |  %b    |  %b    |  %b    | ... |  %b     |  %b   |  %b   | ... |  %b    |  %b   |  %b   | ... |  %b    | ERROR", clk2, rst2, en[0], en[1], en[31], q_esperado[0], q_esperado[1], q_esperado[31], q[0], q[1], q[31]);
	
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
 