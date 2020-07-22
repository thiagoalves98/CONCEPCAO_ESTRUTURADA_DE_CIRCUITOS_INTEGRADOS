#include <iostream>
#include <math.h>
#include <stdio.h>

using namespace std;

int main()
{
    FILE *flopr_tv;
    flopr_tv = fopen("flopr_tv.tv", "w");

    if(flopr_tv == NULL){
        puts("Houve erro ao abrir o arquivo");
        return 1;
    }
    //entradas
    int clk, r, d, en;
    int nEntradas = 4;
    //saida
    int y;
    //Tamanho da tabela verdade. Dois testes para cada entrada d
    int tamanho = pow(2, nEntradas);
    //Matriz da tabela verdade
    int tabelaVerdade[tamanho][nEntradas+1];
    //variavel auxiliar
    int aux;

    //Cria uma tabela com todas as possibilidades
    for(int i = 0; i < tamanho; i++){
        aux = i%2;
        tabelaVerdade[i][0] = aux;
        aux = (i/4)%2;
        tabelaVerdade[i][1] = aux;
        aux = (i/2)%2;
        tabelaVerdade[i][2] = aux;

    }

    //Determina a saída de acordo com as entradas
    for(int i = 0; i < tamanho; i++){
        //Se reset = 1, y = 0
        if(tabelaVerdade[i][1] == 1){
            tabelaVerdade[i][4] = 0;
        }
         //Se en = 1, y = d;
        if(tabelaVerdade[i][2] == 1){
            tabelaVerdade[i][4] = tabelaVerdade[i][3];
        }
    }

    for(int i = 0; i < tamanho; i++){
        for(int j = 0; j < nEntradas+1; j++){
            printf("| %d ", tabelaVerdade[i][j]);
            fprintf(flopr_tv, "%d", tabelaVerdade[i][j]);
            if(j < nEntradas){
                fprintf(flopr_tv, "%c", '_');
            }
        }
        fprintf(flopr_tv, "%c", '\n');
        puts("");
    }

    fclose(flopr_tv);
    return 0;
}
