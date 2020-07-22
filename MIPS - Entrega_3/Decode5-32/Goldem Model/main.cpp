#include <iostream>
#include <math.h>
#include <stdio.h>

using namespace std;

int main()
{
    FILE *decoder5_32_tv;
    decoder5_32_tv = fopen("decoder5_32_tv.tv", "w");

    if(decoder5_32_tv == NULL){
        puts("Houve erro ao abrir o arquivo");
        return 1;
    }
    //entradas
    int a = 5;
    int nEntradas = a;
    //saida
    int y = 32;
    int nSaidas = y;
    //Tamanho da tabela verdade
    int tamanho = pow(2, a);
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

    }

    for(int i = 0; i < tamanho; i++){
        for(int j = 0; j < 5; j++){
            fprintf(decoder5_32_tv, "%d", tabelaVerdade[i][j]);
        }

        fprintf(decoder5_32_tv, "%c", '_');

        for(int j = 5; j < nEntradas+nSaidas; j++){
            fprintf(decoder5_32_tv, "%d", tabelaVerdade[i][j]);
        }

        fprintf(decoder5_32_tv, "%c", '\n');
    }

    fclose(decoder5_32_tv);
    return 0;
}
