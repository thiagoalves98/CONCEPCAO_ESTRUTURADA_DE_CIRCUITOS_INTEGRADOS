module decoder5_32(input logic [0:4]a, output logic [0:31][0:0]y); 

always_comb 
	case(a) 
	
	5'b00000: begin
		y[0 ][0:0] <= 1;
		y[1 ][0:0] <= 0;
		y[2 ][0:0] <= 0;
		y[3 ][0:0] <= 0;
		y[4 ][0:0] <= 0;
		y[5 ][0:0] <= 0;
		y[6 ][0:0] <= 0;
		y[7 ][0:0] <= 0;
		y[8 ][0:0] <= 0;
		y[9 ][0:0] <= 0;
		y[10][0:0] <= 0;
		y[11][0:0] <= 0;
		y[12][0:0] <= 0;
		y[13][0:0] <= 0;
		y[14][0:0] <= 0;
		y[15][0:0] <= 0;
		y[16][0:0] <= 0;
		y[17][0:0] <= 0;
		y[18][0:0] <= 0;
		y[19][0:0] <= 0;
		y[20][0:0] <= 0;
		y[21][0:0] <= 0;
		y[22][0:0] <= 0;
		y[23][0:0] <= 0;
		y[24][0:0] <= 0;
		y[25][0:0] <= 0;
		y[26][0:0] <= 0;
		y[27][0:0] <= 0;
		y[28][0:0] <= 0;
		y[29][0:0] <= 0;
		y[30][0:0] <= 0;
		y[31][0:0] <= 0;
	end

	5'b00001:begin
		y[0 ][0:0] <= 0;
		y[1 ][0:0] <= 1;
		y[2 ][0:0] <= 0;
		y[3 ][0:0] <= 0;
		y[4 ][0:0] <= 0;
		y[5 ][0:0] <= 0;
		y[6 ][0:0] <= 0;
		y[7 ][0:0] <= 0;
		y[8 ][0:0] <= 0;
		y[9 ][0:0] <= 0;
		y[10][0:0] <= 0;
		y[11][0:0] <= 0;
		y[12][0:0] <= 0;
		y[13][0:0] <= 0;
		y[14][0:0] <= 0;
		y[15][0:0] <= 0;
		y[16][0:0] <= 0;
		y[17][0:0] <= 0;
		y[18][0:0] <= 0;
		y[19][0:0] <= 0;
		y[20][0:0] <= 0;
		y[21][0:0] <= 0;
		y[22][0:0] <= 0;
		y[23][0:0] <= 0;
		y[24][0:0] <= 0;
		y[25][0:0] <= 0;
		y[26][0:0] <= 0;
		y[27][0:0] <= 0;
		y[28][0:0] <= 0;
		y[29][0:0] <= 0;
		y[30][0:0] <= 0;
		y[31][0:0] <= 0;
	end

	5'b00010: begin
		y[0 ][0:0] <= 0;
		y[1 ][0:0] <= 0;
		y[2 ][0:0] <= 1;
		y[3 ][0:0] <= 0;
		y[4 ][0:0] <= 0;
		y[5 ][0:0] <= 0;
		y[6 ][0:0] <= 0;
		y[7 ][0:0] <= 0;
		y[8 ][0:0] <= 0;
		y[9 ][0:0] <= 0;
		y[10][0:0] <= 0;
		y[11][0:0] <= 0;
		y[12][0:0] <= 0;
		y[13][0:0] <= 0;
		y[14][0:0] <= 0;
		y[15][0:0] <= 0;
		y[16][0:0] <= 0;
		y[17][0:0] <= 0;
		y[18][0:0] <= 0;
		y[19][0:0] <= 0;
		y[20][0:0] <= 0;
		y[21][0:0] <= 0;
		y[22][0:0] <= 0;
		y[23][0:0] <= 0;
		y[24][0:0] <= 0;
		y[25][0:0] <= 0;
		y[26][0:0] <= 0;
		y[27][0:0] <= 0;
		y[28][0:0] <= 0;
		y[29][0:0] <= 0;
		y[30][0:0] <= 0;
		y[31][0:0] <= 0;
	end
				  
	5'b00011:begin
		y[0 ][0:0] <= 0;
		y[1 ][0:0] <= 0;
		y[2 ][0:0] <= 0;
		y[3 ][0:0] <= 1;
		y[4 ][0:0] <= 0;
		y[5 ][0:0] <= 0;
		y[6 ][0:0] <= 0;
		y[7 ][0:0] <= 0;
		y[8 ][0:0] <= 0;
		y[9 ][0:0] <= 0;
		y[10][0:0] <= 0;
		y[11][0:0] <= 0;
		y[12][0:0] <= 0;
		y[13][0:0] <= 0;
		y[14][0:0] <= 0;
		y[15][0:0] <= 0;
		y[16][0:0] <= 0;
		y[17][0:0] <= 0;
		y[18][0:0] <= 0;
		y[19][0:0] <= 0;
		y[20][0:0] <= 0;
		y[21][0:0] <= 0;
		y[22][0:0] <= 0;
		y[23][0:0] <= 0;
		y[24][0:0] <= 0;
		y[25][0:0] <= 0;
		y[26][0:0] <= 0;
		y[27][0:0] <= 0;
		y[28][0:0] <= 0;
		y[29][0:0] <= 0;
		y[30][0:0] <= 0;
		y[31][0:0] <= 0;
	end
			  
	5'b00100: begin
		y[0 ][0:0] <= 0;
		y[1 ][0:0] <= 0;
		y[2 ][0:0] <= 0;
		y[3 ][0:0] <= 0;
		y[4 ][0:0] <= 1;
		y[5 ][0:0] <= 0;
		y[6 ][0:0] <= 0;
		y[7 ][0:0] <= 0;
		y[8 ][0:0] <= 0;
		y[9 ][0:0] <= 0;
		y[10][0:0] <= 0;
		y[11][0:0] <= 0;
		y[12][0:0] <= 0;
		y[13][0:0] <= 0;
		y[14][0:0] <= 0;
		y[15][0:0] <= 0;
		y[16][0:0] <= 0;
		y[17][0:0] <= 0;
		y[18][0:0] <= 0;
		y[19][0:0] <= 0;
		y[20][0:0] <= 0;
		y[21][0:0] <= 0;
		y[22][0:0] <= 0;
		y[23][0:0] <= 0;
		y[24][0:0] <= 0;
		y[25][0:0] <= 0;
		y[26][0:0] <= 0;
		y[27][0:0] <= 0;
		y[28][0:0] <= 0;
		y[29][0:0] <= 0;
		y[30][0:0] <= 0;
		y[31][0:0] <= 0;
	end
				  
	5'b00101: begin
		y[0 ][0:0] <= 0;
		y[1 ][0:0] <= 0;
		y[2 ][0:0] <= 0;
		y[3 ][0:0] <= 0;
		y[4 ][0:0] <= 0;
		y[5 ][0:0] <= 1;
		y[6 ][0:0] <= 0;
		y[7 ][0:0] <= 0;
		y[8 ][0:0] <= 0;
		y[9 ][0:0] <= 0;
		y[10][0:0] <= 0;
		y[11][0:0] <= 0;
		y[12][0:0] <= 0;
		y[13][0:0] <= 0;
		y[14][0:0] <= 0;
		y[15][0:0] <= 0;
		y[16][0:0] <= 0;
		y[17][0:0] <= 0;
		y[18][0:0] <= 0;
		y[19][0:0] <= 0;
		y[20][0:0] <= 0;
		y[21][0:0] <= 0;
		y[22][0:0] <= 0;
		y[23][0:0] <= 0;
		y[24][0:0] <= 0;
		y[25][0:0] <= 0;
		y[26][0:0] <= 0;
		y[27][0:0] <= 0;
		y[28][0:0] <= 0;
		y[29][0:0] <= 0;
		y[30][0:0] <= 0;
		y[31][0:0] <= 0;
	end
				  
	5'b00110:begin
		y[0 ][0:0] <= 0;
		y[1 ][0:0] <= 0;
		y[2 ][0:0] <= 0;
		y[3 ][0:0] <= 0;
		y[4 ][0:0] <= 0;
		y[5 ][0:0] <= 0;
		y[6 ][0:0] <= 1;
		y[7 ][0:0] <= 0;
		y[8 ][0:0] <= 0;
		y[9 ][0:0] <= 0;
		y[10][0:0] <= 0;
		y[11][0:0] <= 0;
		y[12][0:0] <= 0;
		y[13][0:0] <= 0;
		y[14][0:0] <= 0;
		y[15][0:0] <= 0;
		y[16][0:0] <= 0;
		y[17][0:0] <= 0;
		y[18][0:0] <= 0;
		y[19][0:0] <= 0;
		y[20][0:0] <= 0;
		y[21][0:0] <= 0;
		y[22][0:0] <= 0;
		y[23][0:0] <= 0;
		y[24][0:0] <= 0;
		y[25][0:0] <= 0;
		y[26][0:0] <= 0;
		y[27][0:0] <= 0;
		y[28][0:0] <= 0;
		y[29][0:0] <= 0;
		y[30][0:0] <= 0;
		y[31][0:0] <= 0;
	end
				  
	5'b00111: begin
		y[0 ][0:0] <= 0;
		y[1 ][0:0] <= 0;
		y[2 ][0:0] <= 0;
		y[3 ][0:0] <= 0;
		y[4 ][0:0] <= 0;
		y[5 ][0:0] <= 0;
		y[6 ][0:0] <= 0;
		y[7 ][0:0] <= 1;
		y[8 ][0:0] <= 0;
		y[9 ][0:0] <= 0;
		y[10][0:0] <= 0;
		y[11][0:0] <= 0;
		y[12][0:0] <= 0;
		y[13][0:0] <= 0;
		y[14][0:0] <= 0;
		y[15][0:0] <= 0;
		y[16][0:0] <= 0;
		y[17][0:0] <= 0;
		y[18][0:0] <= 0;
		y[19][0:0] <= 0;
		y[20][0:0] <= 0;
		y[21][0:0] <= 0;
		y[22][0:0] <= 0;
		y[23][0:0] <= 0;
		y[24][0:0] <= 0;
		y[25][0:0] <= 0;
		y[26][0:0] <= 0;
		y[27][0:0] <= 0;
		y[28][0:0] <= 0;
		y[29][0:0] <= 0;
		y[30][0:0] <= 0;
		y[31][0:0] <= 0;
	end
				  
	5'b01000:begin
		y[0 ][0:0] <= 0;
		y[1 ][0:0] <= 0;
		y[2 ][0:0] <= 0;
		y[3 ][0:0] <= 0;
		y[4 ][0:0] <= 0;
		y[5 ][0:0] <= 0;
		y[6 ][0:0] <= 0;
		y[7 ][0:0] <= 0;
		y[8 ][0:0] <= 1;
		y[9 ][0:0] <= 0;
		y[10][0:0] <= 0;
		y[11][0:0] <= 0;
		y[12][0:0] <= 0;
		y[13][0:0] <= 0;
		y[14][0:0] <= 0;
		y[15][0:0] <= 0;
		y[16][0:0] <= 0;
		y[17][0:0] <= 0;
		y[18][0:0] <= 0;
		y[19][0:0] <= 0;
		y[20][0:0] <= 0;
		y[21][0:0] <= 0;
		y[22][0:0] <= 0;
		y[23][0:0] <= 0;
		y[24][0:0] <= 0;
		y[25][0:0] <= 0;
		y[26][0:0] <= 0;
		y[27][0:0] <= 0;
		y[28][0:0] <= 0;
		y[29][0:0] <= 0;
		y[30][0:0] <= 0;
		y[31][0:0] <= 0;
	end
				  
	5'b01001:begin
		y[0 ][0:0] <= 0;
		y[1 ][0:0] <= 0;
		y[2 ][0:0] <= 0;
		y[3 ][0:0] <= 0;
		y[4 ][0:0] <= 0;
		y[5 ][0:0] <= 0;
		y[6 ][0:0] <= 0;
		y[7 ][0:0] <= 0;
		y[8 ][0:0] <= 0;
		y[9 ][0:0] <= 1;
		y[10][0:0] <= 0;
		y[11][0:0] <= 0;
		y[12][0:0] <= 0;
		y[13][0:0] <= 0;
		y[14][0:0] <= 0;
		y[15][0:0] <= 0;
		y[16][0:0] <= 0;
		y[17][0:0] <= 0;
		y[18][0:0] <= 0;
		y[19][0:0] <= 0;
		y[20][0:0] <= 0;
		y[21][0:0] <= 0;
		y[22][0:0] <= 0;
		y[23][0:0] <= 0;
		y[24][0:0] <= 0;
		y[25][0:0] <= 0;
		y[26][0:0] <= 0;
		y[27][0:0] <= 0;
		y[28][0:0] <= 0;
		y[29][0:0] <= 0;
		y[30][0:0] <= 0;
		y[31][0:0] <= 0;
	end
		  
	5'b01010:begin
		y[0 ][0:0] <= 0;
		y[1 ][0:0] <= 0;
		y[2 ][0:0] <= 0;
		y[3 ][0:0] <= 0;
		y[4 ][0:0] <= 0;
		y[5 ][0:0] <= 0;
		y[6 ][0:0] <= 0;
		y[7 ][0:0] <= 0;
		y[8 ][0:0] <= 0;
		y[9 ][0:0] <= 0;
		y[10][0:0] <= 1;
		y[11][0:0] <= 0;
		y[12][0:0] <= 0;
		y[13][0:0] <= 0;
		y[14][0:0] <= 0;
		y[15][0:0] <= 0;
		y[16][0:0] <= 0;
		y[17][0:0] <= 0;
		y[18][0:0] <= 0;
		y[19][0:0] <= 0;
		y[20][0:0] <= 0;
		y[21][0:0] <= 0;
		y[22][0:0] <= 0;
		y[23][0:0] <= 0;
		y[24][0:0] <= 0;
		y[25][0:0] <= 0;
		y[26][0:0] <= 0;
		y[27][0:0] <= 0;
		y[28][0:0] <= 0;
		y[29][0:0] <= 0;
		y[30][0:0] <= 0;
		y[31][0:0] <= 0;
	end
				  
	5'b01011: begin
		y[0 ][0:0] <= 0;
		y[1 ][0:0] <= 0;
		y[2 ][0:0] <= 0;
		y[3 ][0:0] <= 0;
		y[4 ][0:0] <= 0;
		y[5 ][0:0] <= 0;
		y[6 ][0:0] <= 0;
		y[7 ][0:0] <= 0;
		y[8 ][0:0] <= 0;
		y[9 ][0:0] <= 0;
		y[10][0:0] <= 0;
		y[11][0:0] <= 1;
		y[12][0:0] <= 0;
		y[13][0:0] <= 0;
		y[14][0:0] <= 0;
		y[15][0:0] <= 0;
		y[16][0:0] <= 0;
		y[17][0:0] <= 0;
		y[18][0:0] <= 0;
		y[19][0:0] <= 0;
		y[20][0:0] <= 0;
		y[21][0:0] <= 0;
		y[22][0:0] <= 0;
		y[23][0:0] <= 0;
		y[24][0:0] <= 0;
		y[25][0:0] <= 0;
		y[26][0:0] <= 0;
		y[27][0:0] <= 0;
		y[28][0:0] <= 0;
		y[29][0:0] <= 0;
		y[30][0:0] <= 0;
		y[31][0:0] <= 0;
	end
	
	5'b01100: begin
		y[0 ][0:0] <= 0;
		y[1 ][0:0] <= 0;
		y[2 ][0:0] <= 0;
		y[3 ][0:0] <= 0;
		y[4 ][0:0] <= 0;
		y[5 ][0:0] <= 0;
		y[6 ][0:0] <= 0;
		y[7 ][0:0] <= 0;
		y[8 ][0:0] <= 0;
		y[9 ][0:0] <= 0;
		y[10][0:0] <= 0;
		y[11][0:0] <= 0;
		y[12][0:0] <= 1;
		y[13][0:0] <= 0;
		y[14][0:0] <= 0;
		y[15][0:0] <= 0;
		y[16][0:0] <= 0;
		y[17][0:0] <= 0;
		y[18][0:0] <= 0;
		y[19][0:0] <= 0;
		y[20][0:0] <= 0;
		y[21][0:0] <= 0;
		y[22][0:0] <= 0;
		y[23][0:0] <= 0;
		y[24][0:0] <= 0;
		y[25][0:0] <= 0;
		y[26][0:0] <= 0;
		y[27][0:0] <= 0;
		y[28][0:0] <= 0;
		y[29][0:0] <= 0;
		y[30][0:0] <= 0;
		y[31][0:0] <= 0;
	end
		  
	5'b01101:begin
		y[0 ][0:0] <= 0;
		y[1 ][0:0] <= 0;
		y[2 ][0:0] <= 0;
		y[3 ][0:0] <= 0;
		y[4 ][0:0] <= 0;
		y[5 ][0:0] <= 0;
		y[6 ][0:0] <= 0;
		y[7 ][0:0] <= 0;
		y[8 ][0:0] <= 0;
		y[9 ][0:0] <= 0;
		y[10][0:0] <= 0;
		y[11][0:0] <= 0;
		y[12][0:0] <= 0;
		y[13][0:0] <= 1;
		y[14][0:0] <= 0;
		y[15][0:0] <= 0;
		y[16][0:0] <= 0;
		y[17][0:0] <= 0;
		y[18][0:0] <= 0;
		y[19][0:0] <= 0;
		y[20][0:0] <= 0;
		y[21][0:0] <= 0;
		y[22][0:0] <= 0;
		y[23][0:0] <= 0;
		y[24][0:0] <= 0;
		y[25][0:0] <= 0;
		y[26][0:0] <= 0;
		y[27][0:0] <= 0;
		y[28][0:0] <= 0;
		y[29][0:0] <= 0;
		y[30][0:0] <= 0;
		y[31][0:0] <= 0;
	end
				  
	5'b01110:begin
		y[0 ][0:0] <= 0;
		y[1 ][0:0] <= 0;
		y[2 ][0:0] <= 0;
		y[3 ][0:0] <= 0;
		y[4 ][0:0] <= 0;
		y[5 ][0:0] <= 0;
		y[6 ][0:0] <= 0;
		y[7 ][0:0] <= 0;
		y[8 ][0:0] <= 0;
		y[9 ][0:0] <= 0;
		y[10][0:0] <= 0;
		y[11][0:0] <= 0;
		y[12][0:0] <= 0;
		y[13][0:0] <= 0;
		y[14][0:0] <= 1;
		y[15][0:0] <= 0;
		y[16][0:0] <= 0;
		y[17][0:0] <= 0;
		y[18][0:0] <= 0;
		y[19][0:0] <= 0;
		y[20][0:0] <= 0;
		y[21][0:0] <= 0;
		y[22][0:0] <= 0;
		y[23][0:0] <= 0;
		y[24][0:0] <= 0;
		y[25][0:0] <= 0;
		y[26][0:0] <= 0;
		y[27][0:0] <= 0;
		y[28][0:0] <= 0;
		y[29][0:0] <= 0;
		y[30][0:0] <= 0;
		y[31][0:0] <= 0;
	end
			  
	5'b01111:begin
		y[0 ][0:0] <= 0;
		y[1 ][0:0] <= 0;
		y[2 ][0:0] <= 0;
		y[3 ][0:0] <= 0;
		y[4 ][0:0] <= 0;
		y[5 ][0:0] <= 0;
		y[6 ][0:0] <= 0;
		y[7 ][0:0] <= 0;
		y[8 ][0:0] <= 0;
		y[9 ][0:0] <= 0;
		y[10][0:0] <= 0;
		y[11][0:0] <= 0;
		y[12][0:0] <= 0;
		y[13][0:0] <= 0;
		y[14][0:0] <= 0;
		y[15][0:0] <= 1;
		y[16][0:0] <= 0;
		y[17][0:0] <= 0;
		y[18][0:0] <= 0;
		y[19][0:0] <= 0;
		y[20][0:0] <= 0;
		y[21][0:0] <= 0;
		y[22][0:0] <= 0;
		y[23][0:0] <= 0;
		y[24][0:0] <= 0;
		y[25][0:0] <= 0;
		y[26][0:0] <= 0;
		y[27][0:0] <= 0;
		y[28][0:0] <= 0;
		y[29][0:0] <= 0;
		y[30][0:0] <= 0;
		y[31][0:0] <= 0;
	end
				  
	5'b10000: begin
		y[0 ][0:0] <= 0;
		y[1 ][0:0] <= 0;
		y[2 ][0:0] <= 0;
		y[3 ][0:0] <= 0;
		y[4 ][0:0] <= 0;
		y[5 ][0:0] <= 0;
		y[6 ][0:0] <= 0;
		y[7 ][0:0] <= 0;
		y[8 ][0:0] <= 0;
		y[9 ][0:0] <= 0;
		y[10][0:0] <= 0;
		y[11][0:0] <= 0;
		y[12][0:0] <= 0;
		y[13][0:0] <= 0;
		y[14][0:0] <= 0;
		y[15][0:0] <= 0;
		y[16][0:0] <= 1;
		y[17][0:0] <= 0;
		y[18][0:0] <= 0;
		y[19][0:0] <= 0;
		y[20][0:0] <= 0;
		y[21][0:0] <= 0;
		y[22][0:0] <= 0;
		y[23][0:0] <= 0;
		y[24][0:0] <= 0;
		y[25][0:0] <= 0;
		y[26][0:0] <= 0;
		y[27][0:0] <= 0;
		y[28][0:0] <= 0;
		y[29][0:0] <= 0;
		y[30][0:0] <= 0;
		y[31][0:0] <= 0;
	end
				  
	5'b10001:begin
		y[0 ][0:0] <= 0;
		y[1 ][0:0] <= 0;
		y[2 ][0:0] <= 0;
		y[3 ][0:0] <= 0;
		y[4 ][0:0] <= 0;
		y[5 ][0:0] <= 0;
		y[6 ][0:0] <= 0;
		y[7 ][0:0] <= 0;
		y[8 ][0:0] <= 0;
		y[9 ][0:0] <= 0;
		y[10][0:0] <= 0;
		y[11][0:0] <= 0;
		y[12][0:0] <= 0;
		y[13][0:0] <= 0;
		y[14][0:0] <= 0;
		y[15][0:0] <= 0;
		y[16][0:0] <= 0;
		y[17][0:0] <= 1;
		y[18][0:0] <= 0;
		y[19][0:0] <= 0;
		y[20][0:0] <= 0;
		y[21][0:0] <= 0;
		y[22][0:0] <= 0;
		y[23][0:0] <= 0;
		y[24][0:0] <= 0;
		y[25][0:0] <= 0;
		y[26][0:0] <= 0;
		y[27][0:0] <= 0;
		y[28][0:0] <= 0;
		y[29][0:0] <= 0;
		y[30][0:0] <= 0;
		y[31][0:0] <= 0;
	end
				  
	5'b10010:begin
		y[0 ][0:0] <= 0;
		y[1 ][0:0] <= 0;
		y[2 ][0:0] <= 0;
		y[3 ][0:0] <= 0;
		y[4 ][0:0] <= 0;
		y[5 ][0:0] <= 0;
		y[6 ][0:0] <= 0;
		y[7 ][0:0] <= 0;
		y[8 ][0:0] <= 0;
		y[9 ][0:0] <= 0;
		y[10][0:0] <= 0;
		y[11][0:0] <= 0;
		y[12][0:0] <= 0;
		y[13][0:0] <= 0;
		y[14][0:0] <= 0;
		y[15][0:0] <= 0;
		y[16][0:0] <= 0;
		y[17][0:0] <= 0;
		y[18][0:0] <= 1;
		y[19][0:0] <= 0;
		y[20][0:0] <= 0;
		y[21][0:0] <= 0;
		y[22][0:0] <= 0;
		y[23][0:0] <= 0;
		y[24][0:0] <= 0;
		y[25][0:0] <= 0;
		y[26][0:0] <= 0;
		y[27][0:0] <= 0;
		y[28][0:0] <= 0;
		y[29][0:0] <= 0;
		y[30][0:0] <= 0;
		y[31][0:0] <= 0;
	end
	
	5'b10011: begin
		y[0 ][0:0] <= 0;
		y[1 ][0:0] <= 0;
		y[2 ][0:0] <= 0;
		y[3 ][0:0] <= 0;
		y[4 ][0:0] <= 0;
		y[5 ][0:0] <= 0;
		y[6 ][0:0] <= 0;
		y[7 ][0:0] <= 0;
		y[8 ][0:0] <= 0;
		y[9 ][0:0] <= 0;
		y[10][0:0] <= 0;
		y[11][0:0] <= 0;
		y[12][0:0] <= 0;
		y[13][0:0] <= 0;
		y[14][0:0] <= 0;
		y[15][0:0] <= 0;
		y[16][0:0] <= 0;
		y[17][0:0] <= 0;
		y[18][0:0] <= 0;
		y[19][0:0] <= 1;
		y[20][0:0] <= 0;
		y[21][0:0] <= 0;
		y[22][0:0] <= 0;
		y[23][0:0] <= 0;
		y[24][0:0] <= 0;
		y[25][0:0] <= 0;
		y[26][0:0] <= 0;
		y[27][0:0] <= 0;
		y[28][0:0] <= 0;
		y[29][0:0] <= 0;
		y[30][0:0] <= 0;
		y[31][0:0] <= 0;
	end
			  
	5'b10100: begin
		y[0 ][0:0] <= 0;
		y[1 ][0:0] <= 0;
		y[2 ][0:0] <= 0;
		y[3 ][0:0] <= 0;
		y[4 ][0:0] <= 0;
		y[5 ][0:0] <= 0;
		y[6 ][0:0] <= 0;
		y[7 ][0:0] <= 0;
		y[8 ][0:0] <= 0;
		y[9 ][0:0] <= 0;
		y[10][0:0] <= 0;
		y[11][0:0] <= 0;
		y[12][0:0] <= 0;
		y[13][0:0] <= 0;
		y[14][0:0] <= 0;
		y[15][0:0] <= 0;
		y[16][0:0] <= 0;
		y[17][0:0] <= 0;
		y[18][0:0] <= 0;
		y[19][0:0] <= 0;
		y[20][0:0] <= 1;
		y[21][0:0] <= 0;
		y[22][0:0] <= 0;
		y[23][0:0] <= 0;
		y[24][0:0] <= 0;
		y[25][0:0] <= 0;
		y[26][0:0] <= 0;
		y[27][0:0] <= 0;
		y[28][0:0] <= 0;
		y[29][0:0] <= 0;
		y[30][0:0] <= 0;
		y[31][0:0] <= 0;
	end
				  
	5'b10101: begin
		y[0 ][0:0] <= 0;
		y[1 ][0:0] <= 0;
		y[2 ][0:0] <= 0;
		y[3 ][0:0] <= 0;
		y[4 ][0:0] <= 0;
		y[5 ][0:0] <= 0;
		y[6 ][0:0] <= 0;
		y[7 ][0:0] <= 0;
		y[8 ][0:0] <= 0;
		y[9 ][0:0] <= 0;
		y[10][0:0] <= 0;
		y[11][0:0] <= 0;
		y[12][0:0] <= 0;
		y[13][0:0] <= 0;
		y[14][0:0] <= 0;
		y[15][0:0] <= 0;
		y[16][0:0] <= 0;
		y[17][0:0] <= 0;
		y[18][0:0] <= 0;
		y[19][0:0] <= 0;
		y[20][0:0] <= 0;
		y[21][0:0] <= 1;
		y[22][0:0] <= 0;
		y[23][0:0] <= 0;
		y[24][0:0] <= 0;
		y[25][0:0] <= 0;
		y[26][0:0] <= 0;
		y[27][0:0] <= 0;
		y[28][0:0] <= 0;
		y[29][0:0] <= 0;
		y[30][0:0] <= 0;
		y[31][0:0] <= 0;
	end
				  
	5'b10110:begin
		y[0 ][0:0] <= 0;
		y[1 ][0:0] <= 0;
		y[2 ][0:0] <= 0;
		y[3 ][0:0] <= 0;
		y[4 ][0:0] <= 0;
		y[5 ][0:0] <= 0;
		y[6 ][0:0] <= 0;
		y[7 ][0:0] <= 0;
		y[8 ][0:0] <= 0;
		y[9 ][0:0] <= 0;
		y[10][0:0] <= 0;
		y[11][0:0] <= 0;
		y[12][0:0] <= 0;
		y[13][0:0] <= 0;
		y[14][0:0] <= 0;
		y[15][0:0] <= 0;
		y[16][0:0] <= 0;
		y[17][0:0] <= 0;
		y[18][0:0] <= 0;
		y[19][0:0] <= 0;
		y[20][0:0] <= 0;
		y[21][0:0] <= 0;
		y[22][0:0] <= 1;
		y[23][0:0] <= 0;
		y[24][0:0] <= 0;
		y[25][0:0] <= 0;
		y[26][0:0] <= 0;
		y[27][0:0] <= 0;
		y[28][0:0] <= 0;
		y[29][0:0] <= 0;
		y[30][0:0] <= 0;
		y[31][0:0] <= 0;
	end
				  
	5'b10111:begin
		y[0 ][0:0] <= 0;
		y[1 ][0:0] <= 0;
		y[2 ][0:0] <= 0;
		y[3 ][0:0] <= 0;
		y[4 ][0:0] <= 0;
		y[5 ][0:0] <= 0;
		y[6 ][0:0] <= 0;
		y[7 ][0:0] <= 0;
		y[8 ][0:0] <= 0;
		y[9 ][0:0] <= 0;
		y[10][0:0] <= 0;
		y[11][0:0] <= 0;
		y[12][0:0] <= 0;
		y[13][0:0] <= 0;
		y[14][0:0] <= 0;
		y[15][0:0] <= 0;
		y[16][0:0] <= 0;
		y[17][0:0] <= 0;
		y[18][0:0] <= 0;
		y[19][0:0] <= 0;
		y[20][0:0] <= 0;
		y[21][0:0] <= 0;
		y[22][0:0] <= 0;
		y[23][0:0] <= 1;
		y[24][0:0] <= 0;
		y[25][0:0] <= 0;
		y[26][0:0] <= 0;
		y[27][0:0] <= 0;
		y[28][0:0] <= 0;
		y[29][0:0] <= 0;
		y[30][0:0] <= 0;
		y[31][0:0] <= 0;
	end
				  
	5'b11000:begin
		y[0 ][0:0] <= 0;
		y[1 ][0:0] <= 0;
		y[2 ][0:0] <= 0;
		y[3 ][0:0] <= 0;
		y[4 ][0:0] <= 0;
		y[5 ][0:0] <= 0;
		y[6 ][0:0] <= 0;
		y[7 ][0:0] <= 0;
		y[8 ][0:0] <= 0;
		y[9 ][0:0] <= 0;
		y[10][0:0] <= 0;
		y[11][0:0] <= 0;
		y[12][0:0] <= 0;
		y[13][0:0] <= 0;
		y[14][0:0] <= 0;
		y[15][0:0] <= 0;
		y[16][0:0] <= 0;
		y[17][0:0] <= 0;
		y[18][0:0] <= 0;
		y[19][0:0] <= 0;
		y[20][0:0] <= 0;
		y[21][0:0] <= 0;
		y[22][0:0] <= 0;
		y[23][0:0] <= 0;
		y[24][0:0] <= 1;
		y[25][0:0] <= 0;
		y[26][0:0] <= 0;
		y[27][0:0] <= 0;
		y[28][0:0] <= 0;
		y[29][0:0] <= 0;
		y[30][0:0] <= 0;
		y[31][0:0] <= 0;
	end
				  
	5'b11001: begin
		y[0 ][0:0] <= 0;
		y[1 ][0:0] <= 0;
		y[2 ][0:0] <= 0;
		y[3 ][0:0] <= 0;
		y[4 ][0:0] <= 0;
		y[5 ][0:0] <= 0;
		y[6 ][0:0] <= 0;
		y[7 ][0:0] <= 0;
		y[8 ][0:0] <= 0;
		y[9 ][0:0] <= 0;
		y[10][0:0] <= 0;
		y[11][0:0] <= 0;
		y[12][0:0] <= 0;
		y[13][0:0] <= 0;
		y[14][0:0] <= 0;
		y[15][0:0] <= 0;
		y[16][0:0] <= 0;
		y[17][0:0] <= 0;
		y[18][0:0] <= 0;
		y[19][0:0] <= 0;
		y[20][0:0] <= 0;
		y[21][0:0] <= 0;
		y[22][0:0] <= 0;
		y[23][0:0] <= 0;
		y[24][0:0] <= 0;
		y[25][0:0] <= 1;
		y[26][0:0] <= 0;
		y[27][0:0] <= 0;
		y[28][0:0] <= 0;
		y[29][0:0] <= 0;
		y[30][0:0] <= 0;
		y[31][0:0] <= 0;
	end
				  
	5'b11010: begin
		y[0 ][0:0] <= 0;
		y[1 ][0:0] <= 0;
		y[2 ][0:0] <= 0;
		y[3 ][0:0] <= 0;
		y[4 ][0:0] <= 0;
		y[5 ][0:0] <= 0;
		y[6 ][0:0] <= 0;
		y[7 ][0:0] <= 0;
		y[8 ][0:0] <= 0;
		y[9 ][0:0] <= 0;
		y[10][0:0] <= 0;
		y[11][0:0] <= 0;
		y[12][0:0] <= 0;
		y[13][0:0] <= 0;
		y[14][0:0] <= 0;
		y[15][0:0] <= 0;
		y[16][0:0] <= 0;
		y[17][0:0] <= 0;
		y[18][0:0] <= 0;
		y[19][0:0] <= 0;
		y[20][0:0] <= 0;
		y[21][0:0] <= 0;
		y[22][0:0] <= 0;
		y[23][0:0] <= 0;
		y[24][0:0] <= 0;
		y[25][0:0] <= 0;
		y[26][0:0] <= 1;
		y[27][0:0] <= 0;
		y[28][0:0] <= 0;
		y[29][0:0] <= 0;
		y[30][0:0] <= 0;
		y[31][0:0] <= 0;
	end
				  
	5'b11011:begin
		y[0 ][0:0] <= 0;
		y[1 ][0:0] <= 0;
		y[2 ][0:0] <= 0;
		y[3 ][0:0] <= 0;
		y[4 ][0:0] <= 0;
		y[5 ][0:0] <= 0;
		y[6 ][0:0] <= 0;
		y[7 ][0:0] <= 0;
		y[8 ][0:0] <= 0;
		y[9 ][0:0] <= 0;
		y[10][0:0] <= 0;
		y[11][0:0] <= 0;
		y[12][0:0] <= 0;
		y[13][0:0] <= 0;
		y[14][0:0] <= 0;
		y[15][0:0] <= 0;
		y[16][0:0] <= 0;
		y[17][0:0] <= 0;
		y[18][0:0] <= 0;
		y[19][0:0] <= 0;
		y[20][0:0] <= 0;
		y[21][0:0] <= 0;
		y[22][0:0] <= 0;
		y[23][0:0] <= 0;
		y[24][0:0] <= 0;
		y[25][0:0] <= 0;
		y[26][0:0] <= 0;
		y[27][0:0] <= 1;
		y[28][0:0] <= 0;
		y[29][0:0] <= 0;
		y[30][0:0] <= 0;
		y[31][0:0] <= 0;
	end
				  
	5'b11100: begin
		y[0 ][0:0] <= 0;
		y[1 ][0:0] <= 0;
		y[2 ][0:0] <= 0;
		y[3 ][0:0] <= 0;
		y[4 ][0:0] <= 0;
		y[5 ][0:0] <= 0;
		y[6 ][0:0] <= 0;
		y[7 ][0:0] <= 0;
		y[8 ][0:0] <= 0;
		y[9 ][0:0] <= 0;
		y[10][0:0] <= 0;
		y[11][0:0] <= 0;
		y[12][0:0] <= 0;
		y[13][0:0] <= 0;
		y[14][0:0] <= 0;
		y[15][0:0] <= 0;
		y[16][0:0] <= 0;
		y[17][0:0] <= 0;
		y[18][0:0] <= 0;
		y[19][0:0] <= 0;
		y[20][0:0] <= 0;
		y[21][0:0] <= 0;
		y[22][0:0] <= 0;
		y[23][0:0] <= 0;
		y[24][0:0] <= 0;
		y[25][0:0] <= 0;
		y[26][0:0] <= 0;
		y[27][0:0] <= 0;
		y[28][0:0] <= 1;
		y[29][0:0] <= 0;
		y[30][0:0] <= 0;
		y[31][0:0] <= 0;
	end
			  
	5'b11101:begin
		y[0 ][0:0] <= 0;
		y[1 ][0:0] <= 0;
		y[2 ][0:0] <= 0;
		y[3 ][0:0] <= 0;
		y[4 ][0:0] <= 0;
		y[5 ][0:0] <= 0;
		y[6 ][0:0] <= 0;
		y[7 ][0:0] <= 0;
		y[8 ][0:0] <= 0;
		y[9 ][0:0] <= 0;
		y[10][0:0] <= 0;
		y[11][0:0] <= 0;
		y[12][0:0] <= 0;
		y[13][0:0] <= 0;
		y[14][0:0] <= 0;
		y[15][0:0] <= 0;
		y[16][0:0] <= 0;
		y[17][0:0] <= 0;
		y[18][0:0] <= 0;
		y[19][0:0] <= 0;
		y[20][0:0] <= 0;
		y[21][0:0] <= 0;
		y[22][0:0] <= 0;
		y[23][0:0] <= 0;
		y[24][0:0] <= 0;
		y[25][0:0] <= 0;
		y[26][0:0] <= 0;
		y[27][0:0] <= 0;
		y[28][0:0] <= 0;
		y[29][0:0] <= 1;
		y[30][0:0] <= 0;
		y[31][0:0] <= 0;
	end
			  
	5'b11110:begin
		y[0 ][0:0] <= 0;
		y[1 ][0:0] <= 0;
		y[2 ][0:0] <= 0;
		y[3 ][0:0] <= 0;
		y[4 ][0:0] <= 0;
		y[5 ][0:0] <= 0;
		y[6 ][0:0] <= 0;
		y[7 ][0:0] <= 0;
		y[8 ][0:0] <= 0;
		y[9 ][0:0] <= 0;
		y[10][0:0] <= 0;
		y[11][0:0] <= 0;
		y[12][0:0] <= 0;
		y[13][0:0] <= 0;
		y[14][0:0] <= 0;
		y[15][0:0] <= 0;
		y[16][0:0] <= 0;
		y[17][0:0] <= 0;
		y[18][0:0] <= 0;
		y[19][0:0] <= 0;
		y[20][0:0] <= 0;
		y[21][0:0] <= 0;
		y[22][0:0] <= 0;
		y[23][0:0] <= 0;
		y[24][0:0] <= 0;
		y[25][0:0] <= 0;
		y[26][0:0] <= 0;
		y[27][0:0] <= 0;
		y[28][0:0] <= 0;
		y[29][0:0] <= 0;
		y[30][0:0] <= 1;
		y[31][0:0] <= 0;
	end
	/*				  
	5'b11111: begin
		y[0 ][0:0] <= 0;
		y[1 ][0:0] <= 0;
		y[2 ][0:0] <= 0;
		y[3 ][0:0] <= 0;
		y[4 ][0:0] <= 0;
		y[5 ][0:0] <= 0;
		y[6 ][0:0] <= 0;
		y[7 ][0:0] <= 0;
		y[8 ][0:0] <= 0;
		y[9 ][0:0] <= 0;
		y[10][0:0] <= 0;
		y[11][0:0] <= 0;
		y[12][0:0] <= 0;
		y[13][0:0] <= 0;
		y[14][0:0] <= 0;
		y[15][0:0] <= 0;
		y[16][0:0] <= 0;
		y[17][0:0] <= 0;
		y[18][0:0] <= 0;
		y[19][0:0] <= 0;
		y[20][0:0] <= 0;
		y[21][0:0] <= 0;
		y[22][0:0] <= 0;
		y[23][0:0] <= 0;
		y[24][0:0] <= 0;
		y[25][0:0] <= 0;
		y[26][0:0] <= 0;
		y[27][0:0] <= 0;
		y[28][0:0] <= 0;
		y[29][0:0] <= 0;
		y[30][0:0] <= 0;
		y[31][0:0] <= 1;
	end
	
	default: begin
		y[0 ][0:0] <= 1'bx;
		y[1 ][0:0] <= 1'bx;
		y[2 ][0:0] <= 1'bx;
		y[3 ][0:0] <= 1'bx;
		y[4 ][0:0] <= 1'bx;
		y[5 ][0:0] <= 1'bx;
		y[6 ][0:0] <= 1'bx;
		y[7 ][0:0] <= 1'bx;
		y[8 ][0:0] <= 1'bx;
		y[9 ][0:0] <= 1'bx;
		y[10][0:0] <= 1'bx;
		y[11][0:0] <= 1'bx;
		y[12][0:0] <= 1'bx;
		y[13][0:0] <= 1'bx;
		y[14][0:0] <= 1'bx;
		y[15][0:0] <= 1'bx;
		y[16][0:0] <= 1'bx;
		y[17][0:0] <= 1'bx;
		y[18][0:0] <= 1'bx;
		y[19][0:0] <= 1'bx;
		y[20][0:0] <= 1'bx;
		y[21][0:0] <= 1'bx;
		y[22][0:0] <= 1'bx;
		y[23][0:0] <= 1'bx;
		y[24][0:0] <= 1'bx;
		y[25][0:0] <= 1'bx;
		y[26][0:0] <= 1'bx;
		y[27][0:0] <= 1'bx;
		y[28][0:0] <= 1'bx;
		y[29][0:0] <= 1'bx;
		y[30][0:0] <= 1'bx;
		y[31][0:0] <= 1'bx;
	end
	*/
	endcase

endmodule
