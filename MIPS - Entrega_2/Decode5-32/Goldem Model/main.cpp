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

    //entrada de 5 bits
    int a = 5;
    //saida de 32 bits
    int y = 32;
    //Tamanho da tabela verdade.
    int linhas = (int)pow(2,5);
    int colunas = a + y;
    //Matriz da tabela verdade
    int tabelaVerdade[linhas][colunas];
    //aux
    int aux;

    //Percorre todas as linhas
    for(int i = 0; i < linhas; i++){
        //Percorre as 5 primeiras colunas
        for(int j = 0; j < 5; j++){
            aux = (i/(int)pow(2,j))%2;
            tabelaVerdade[i][4-j] = aux;
        }

        //Percorre as colunas restantes
        for(int j = 5; j < colunas; j++){
            tabelaVerdade[i][j] = 0;
        }
        //Y[A] = 1
        tabelaVerdade[i][36-i] = 1;

    }

    for(int i = 0; i < linhas; i++){
        for(int j = 0; j < 5; j++){
           fprintf(decoder5_32_tv, "%d", tabelaVerdade[i][j]);
        }

        fprintf(decoder5_32_tv, "%c", '_');

        for(int j = 5; j < colunas; j++){
           fprintf(decoder5_32_tv, "%d", tabelaVerdade[i][j]);
        }

        fprintf(decoder5_32_tv, "%c", '\n');

    }

    fclose(decoder5_32_tv);

    return 0;
}
