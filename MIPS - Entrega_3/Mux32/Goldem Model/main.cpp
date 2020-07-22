#include <iostream>
#include <math.h>
#include <stdio.h>

using namespace std;

int main()
{
    FILE *mux32_tv;
    mux32_tv = fopen("mux32_tv.tv", "w");

    if(mux32_tv == NULL){
        puts("Houve erro ao abrir o arquivo");
        return 1;
    }
    //entradas
    int a = 5;
    int d = 32;
    int nEntradas = a + d;
    //saida
    int y = 1;
    int nSaidas = y;
    //Tamanho da tabela verdade
    int tamanho = pow(2, 5);
    //Matriz da tabela verdade
    int tabelaVerdade[tamanho][nEntradas+nSaidas];
    //variavel auxiliar
    int aux;

    //Cria uma tabela com todas as possibilidades
    for(int i = 0; i < tamanho; i++){
        aux = i%2;
        tabelaVerdade[i][4] = aux;
        aux = (i/2)%2;
        tabelaVerdade[i][3] = aux;
        aux = (i/4)%2;
        tabelaVerdade[i][2] = aux;
        aux = (i/8)%2;
        tabelaVerdade[i][1] = aux;
        aux = (i/16)%2;
        tabelaVerdade[i][0] = aux;

        for(int j = 5; j < nEntradas+nSaidas; j++){
            tabelaVerdade[i][j] = 0;
        }

        tabelaVerdade[i][i+5] = 1;
        tabelaVerdade[i][nEntradas+nSaidas-1] = 1;

    }

    for(int i = 0; i < tamanho; i++){
        for(int j = 0; j < 5; j++){
            fprintf(mux32_tv, "%d", tabelaVerdade[i][j]);
        }

        fprintf(mux32_tv, "%c", '_');

        for(int j = 5; j < nEntradas; j++){
            fprintf(mux32_tv, "%d", tabelaVerdade[i][j]);
        }

        fprintf(mux32_tv, "%c", '_');

        fprintf(mux32_tv, "%d", tabelaVerdade[i][nEntradas+nSaidas-1]);

        fprintf(mux32_tv, "%c", '\n');
    }

    fclose(mux32_tv);
    return 0;
}
