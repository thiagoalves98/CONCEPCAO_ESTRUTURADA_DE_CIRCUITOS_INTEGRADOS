`timescale 1ns/100ps

module mips_tb;

logic aux;
logic clk,rst;
logic RESET,CLOCK,MEMWRITE,MEMWRITE_esperado;
logic [31:0] WD,WD_esperado,ADR,ADR_esperado,RD;
logic [31:0]vector_ind,erros;
logic [66:0]testvectors[1000:0];
logic [7:0]memory[127:0];
integer file;
integer count;

mips duv(.MemoryRD(RD), .clock(CLOCK), .reset(RESET), .MemoryAddress(ADR), .MemoryWD(WD), .MemoryWE(MEMWRITE));

initial begin
	$readmemb("mips.tv",testvectors);
	vector_ind=0; 
	erros=0;
	rst=1'b1; 
	#13; 
	rst=0;
	file = $fopen("memory.tv","w");
	
	foreach(memory[i]) memory[i] = 8'b00000000;
	
	{memory[0],memory[1],memory[2],memory[3]}= 32'b10001100000000010000000000100000; // primeira instruÃƒÂ§ÃƒÂ£o - lw
	{memory[4],memory[5],memory[6],memory[7]}= 32'b10101100000000010000000000100100; // segunda instruÃƒÂ§ÃƒÂ£o - sw
	{memory[8],memory[9],memory[10],memory[11]}= 32'b10001100000000100000000000101000; // terceira instruÃƒÂ§ÃƒÂ£o - lw
	{memory[12],memory[13],memory[14],memory[15]}=32'b00100000010000110000000000000001; // quarta instruÃƒÂ§ÃƒÂ£o -addi
	{memory[16],memory[17],memory[18],memory[19]}= 32'b10101100000000110000000001000000; // quinta instruÃƒÂ§ÃƒÂ£o - sw
	{memory[20],memory[21],memory[22],memory[23]}= 32'b00001000000000000000000000010011;// sexta instruÃƒÂ§ÃƒÂ£o - jump
	{memory[76],memory[77],memory[78],memory[79]}= 32'b00000000001000100010000000100000; // sÃƒÂ©tima instruÃƒÂ§ÃƒÂ£o - add
	{memory[80],memory[81],memory[82],memory[83]}= 32'b10101100000001000000000000101100; // oitava instruÃƒÂ§ÃƒÂ£o - sw
	{memory[32],memory[33],memory[34],memory[35]} = 32'b00000000000000000000000000001111;
	{memory[40],memory[41],memory[42],memory[43]} = 32'b00000000000000000000000000001100;
	
	count = 0;
	$fwrite(file,"------------MemÃƒÂ³ria inicial------------\n");
	count = 0;
	$fwrite(file,"------------MemÃƒÂ³ria inicial------------\n");
	
	foreach(memory[i]) begin
	
	if(count == 4 ) begin
		$fwrite(file,"\n");
		count = 0;
	end
	
	if(count == 0)
		$fwrite(file,"[0x%2h]",127- i);
		$fwrite(file,"%b",memory[127-i]);
		count++;
	end
end

always begin
	clk =1; 
	#8; 
	clk=0; 
	#5;
end

always @(posedge MEMWRITE) begin
	{memory[ADR],memory[ADR+1],memory[ADR+2],memory[ADR+3]} = WD;
end

always @(posedge clk) begin
	{CLOCK,RESET,ADR_esperado,WD_esperado,MEMWRITE_esperado} = testvectors[vector_ind];
	
	if(RESET == 1'b1)
		RD = {memory[0],memory[1],memory[2],memory[3]};
	else
		RD = {memory[ADR],memory[ADR+1],memory[ADR+2],memory[ADR+3]};
end

always @(negedge clk)
	if (~rst) begin
		aux = erros;
		
		for(int k = 0; k < 32; k++) begin
			assert (WD[k] === WD_esperado[k])
			
			else begin
				if(WD[k] ==! 1'bx) begin
					$display("| WD != WD_esperado | ERRO bit [%d]", k);
					erros++;
				end
			end;
		end
		
		if(aux == erros)
			$display("| WD = %b | WD_esperado = %b | OK", WD, WD_esperado);
		
		aux = erros;

		for(int k = 0; k < 32; k++) begin
			assert (ADR[k]=== ADR_esperado[k])
			
			else begin
				if(ADR[k] ==! 1'bx) begin
						$display("| ADR != ADR_esperado | ERRO bit [%d]", k);
						erros++;
				end
			end
		end
		
		if(aux == erros)
			$display("| ADR = %b | ADR_esperado = %b | OK", ADR, ADR_esperado);
		
		aux = erros;
			
		assert (MEMWRITE === MEMWRITE_esperado)
		
		else begin
			if(MEMWRITE ==! 1'bx)begin
				$display("| MemWRITE != MemWRITE_esperado | ERRO");
				erros = erros + 1;
			end
		end
		
		if(aux == erros)
			$display("| MemWRITE = %b | MemWRITE_esp = %b | OK", MEMWRITE,MEMWRITE_esperado);

		vector_ind = vector_ind + 1;

		if(testvectors[vector_ind] === 67'bx) begin
			$display("%d testes realizados com %d erros", vector_ind, erros);
			
			//Finaliza
			#1
			count = 0;
			
			$fwrite(file,"\n-------------Memoria final-------------\n");
			
			foreach(memory[i]) begin
				if(count == 4 ) begin
					$fwrite(file,"\n");
					count = 0;
				end
			
				if(count == 0)
					$fwrite(file,"[0x%2h]",127- i);
				
				$fwrite(file,"%b",memory[127-i]);
				count++;
			end

			$stop;
		end
end

endmodule

