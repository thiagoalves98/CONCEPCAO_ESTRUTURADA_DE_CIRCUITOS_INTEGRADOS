#include <iostream>
#include <math.h>
#include <stdio.h>

using namespace std;

int main()
{
    FILE *mux4_tv;
    mux4_tv = fopen("mux4_tv.tv", "w");

    if(mux4_tv == NULL){
        puts("Houve erro ao abrir o arquivo");
        return 1;
    }
    //entradas
    int d0, d1, d2, d3, s0, s1;
    int nEntradas = 6;
    //saida
    int y;
    //Tamanho da tabela verdade. Dois testes para cada entrada d
    int tamanho = (nEntradas-2)*2;
    //Matriz da tabela verdade
    int tabelaVerdade[tamanho][nEntradas+1];
    //variavel auxiliar
    int aux;

    //Cria uma tabela com todas as possibilidades
    for(int i = 0; i < tamanho; i++){
        aux = (i/2)%2;
        tabelaVerdade[i][4] = aux;
        aux = (i/4)%2;
        tabelaVerdade[i][5] = aux;

        if(0 <= i < 2){
            aux = i%2;
            tabelaVerdade[i][0] = aux;
            aux = 1 - aux;
            tabelaVerdade[i][1] = aux;
            tabelaVerdade[i][2] = aux;
            tabelaVerdade[i][3] = aux;
        }
        if(2 <= i < 4){
            aux = i%2;
            tabelaVerdade[i][1] = aux;
            aux = 1 - aux;
            tabelaVerdade[i][0] = aux;
            tabelaVerdade[i][2] = aux;
            tabelaVerdade[i][3] = aux;
        }
        if(4 <= i < 6){
            aux = i%2;
            tabelaVerdade[i][2] = aux;
            aux = 1 - aux;
            tabelaVerdade[i][0] = aux;
            tabelaVerdade[i][1] = aux;
            tabelaVerdade[i][3] = aux;
        }
        if(6 <= i < 8){
            aux = i%2;
            tabelaVerdade[i][3] = aux;
            aux = 1 - aux;
            tabelaVerdade[i][0] = aux;
            tabelaVerdade[i][1] = aux;
            tabelaVerdade[i][2] = aux;
        }
    }

    //Determina a saída de acordo com as entradas
    for(int i = 0; i < tamanho; i++){
        //Se s0 = 0 e s1 = 0, y = d0
        if(tabelaVerdade[i][4] == 0 && tabelaVerdade[i][5] == 0){
            tabelaVerdade[i][6] = tabelaVerdade[i][0];
        }
        //Se s0 = 1 e s1 = 0, y = d1
        if(tabelaVerdade[i][4] == 1 && tabelaVerdade[i][5] == 0){
            tabelaVerdade[i][6] = tabelaVerdade[i][1];
        }
        //Se s0 = 0 e s1 = 1, y = d2
        if(tabelaVerdade[i][4] == 0 && tabelaVerdade[i][5] == 1){
            tabelaVerdade[i][6] = tabelaVerdade[i][2];
        }
        //Se s0 = 1 e s1 = 1, y = d3
        if(tabelaVerdade[i][4] == 1 && tabelaVerdade[i][5] == 1){
            tabelaVerdade[i][6] = tabelaVerdade[i][3];
        }
    }

    for(int i = 0; i < tamanho; i++){
        for(int j = 0; j < nEntradas+1; j++){
            printf("| %d ", tabelaVerdade[i][j]);
            fprintf(mux4_tv, "%d", tabelaVerdade[i][j]);
            if(j < nEntradas){
                fprintf(mux4_tv, "%c", '_');
            }
        }
        fprintf(mux4_tv, "%c", '\n');
        puts("");
    }

    fclose(mux4_tv);
    return 0;
}
