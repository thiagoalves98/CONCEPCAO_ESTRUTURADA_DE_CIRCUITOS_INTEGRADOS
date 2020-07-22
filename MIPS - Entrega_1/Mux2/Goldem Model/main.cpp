#include <iostream>
#include <math.h>
#include <stdio.h>

using namespace std;

int main()
{
    FILE *mux2_tv;
    mux2_tv = fopen("mux2_tv.tv", "w");

    if(mux2_tv == NULL){
        puts("Houve erro ao abrir o arquivo");
        return 1;
    }
    //entradas
    int d0, d1, s;
    int nEntradas = 3;
    //saida
    int y;
    //Tamanho da tabela verdade
    int tamanho = pow(2, nEntradas);
    //Matriz da tabela verdade
    int tabelaVerdade[tamanho][nEntradas+1];
    //variavel auxiliar
    int aux;

    //Cria uma tabela com todas as possibilidades
    for(int i = 0; i < tamanho; i++){
        aux = i%2;
        tabelaVerdade[i][2] = aux;
        aux = (i/2)%2;
        tabelaVerdade[i][1] = aux;
        aux = (i/4)%2;
        tabelaVerdade[i][0] = aux;
    }

    //Determina a saída de acordo com as entradas
    for(int i = 0; i < tamanho; i++){
        //Se s=0, y=d0
        if(tabelaVerdade[i][2] == 0){
            tabelaVerdade[i][3] = tabelaVerdade[i][0];
        }
        //Se s = 1, y=d1
        else if(tabelaVerdade[i][2] == 1){
            tabelaVerdade[i][3] = tabelaVerdade[i][1];
        }
    }

    for(int i = 0; i < tamanho; i++){
        for(int j = 0; j < nEntradas+1; j++){
            printf("| %d ", tabelaVerdade[i][j]);
            fprintf(mux2_tv, "%d", tabelaVerdade[i][j]);
            if(j < nEntradas){
                fprintf(mux2_tv, "%c", '_');
            }
        }
        fprintf(mux2_tv, "%c", '\n');
        puts("");
    }

    fclose(mux2_tv);
    return 0;
}
