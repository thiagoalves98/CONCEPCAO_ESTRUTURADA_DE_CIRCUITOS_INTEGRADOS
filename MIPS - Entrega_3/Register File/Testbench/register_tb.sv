`timescale 1ns/100ps

module register_tb;
    
int counter, errors, aux_error;
logic clk, rst;
logic [0:4]RW;
logic en, clk2, busW;
logic [0:4]RA;
logic [0:4]RB;
logic busA, busA_esperado;
logic busB, busB_esperado;

logic [0:19]vectors[32];
 
register dut(.RW(RW), .en(en), .clk(clk2), .busW(busW), .RA(RA), .RB(RB), .busA(busA), .busB(busB));

initial begin
	$display("Iniciando Testbench");
	$display("|   RW    | CLK | EN  | busW|   RA    |   RB    |busA |  bAes   |busB |  bBes   |"); 
	$display("|---------|-----|-----|-----|---------|---------|-----|---------|-----|---------|");
	$readmemb("register_tv.tv",vectors);
	counter=0; errors=0;
	rst = 1;
	#30;
	rst = 0;
end
		
always begin
   clk=1; #25;
   clk=0; #5;
end

always @(posedge clk)
	if(~rst) begin

		for(int i = 0; i < 5; i=i+1)begin
			RW[i] = vectors[counter][i];
		end
			en = vectors[counter][5];
			clk2 = vectors[counter][6];
			busW = vectors[counter][7];
			
		
		for(int i = 8; i < 13; i=i+1)begin
			RA[i-8] = vectors[counter][i];
		end
		
		for(int i = 13; i < 18; i=i+1)begin
			RB[i-13] = vectors[counter][i];
		end	
		
		busA_esperado = vectors[counter][18];
		busB_esperado = vectors[counter][19];
		
	end

always @(negedge clk)

	if(~rst) begin
		aux_error = errors;
		assert(busA === busA_esperado)
	else
		begin
		errors = errors + 1; //Incrementa contador de erros a cada bit errado encontrado
		end
		
	if(aux_error === errors)
		$display("|  %b  |  %b  |  %b  |  %b  |  %b  |  %b  |  %b  |    %b    |  %b  |    %b    | OK", RW, clk2, en, busW, RA, RB, busA, busA_esperado, busB, busB_esperado);
	else
		$display("|  %b  |  %b  |  %b  |  %b  |  %b  |  %b  |  %b  |    %b    |  %b  |    %b    | OK", RW, clk2, en, busW, RA ,RB, busA, busA_esperado, busB, busB_esperado);
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
