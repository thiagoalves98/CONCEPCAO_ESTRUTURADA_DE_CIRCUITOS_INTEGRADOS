#include <iostream>
#include <math.h>
#include <stdio.h>

using namespace std;

int main()
{
    FILE *bank_tv;
    bank_tv = fopen("bank_tv.tv", "w");

    if(bank_tv == NULL){
        puts("Houve erro ao abrir o arquivo");
        return 1;
    }
    //entradas
    int clk = 1;
    int reset = 1;
    int en = 32;
    int d = 1;
    int nEntradas = 35;
    //saida
    int q = 32;
    int nSaidas = q;
    //Tamanho da tabela verdade
    int tamanho = pow(2, 4);
    //Matriz da tabela verdade
    int tabelaVerdade[tamanho][nEntradas+nSaidas];
    //variavel auxiliar
    int aux;

    //Cria uma tabela com todas as possibilidades
    for(int i = 0; i < tamanho; i++){
        //clk
        aux = i%2;
        tabelaVerdade[i][0] = aux;
        //reset
        aux = (i/8)%2;
        tabelaVerdade[i][1] = 1 - aux;
        //en
        for(int j = 2; j < 34; j++){
            aux = (i/2)%2;
            tabelaVerdade[i][j] = aux;
        }
        //d
        aux = (i/2)%2;
        tabelaVerdade[i][34] = aux;

         for(int j = 2; j < 34; j++){
            //Se en = 1, q = d
            if(tabelaVerdade[i][j] == 1){
                tabelaVerdade[i][j+35] = 1;
            }
        }

        //q
        for(int j = 35; j < 67; j++){
            //Se reset = 1, y = 0
            if(tabelaVerdade[i][1] == 1){
                tabelaVerdade[i][j] = 0;
            }
        }
    }

    for(int i = 0; i < tamanho; i++){

        fprintf(bank_tv, "%d", tabelaVerdade[i][0]);
        fprintf(bank_tv, "%c", '_');

        fprintf(bank_tv, "%d", tabelaVerdade[i][1]);
        fprintf(bank_tv, "%c", '_');

        for(int j = 2; j < 34; j++){
            fprintf(bank_tv, "%d", tabelaVerdade[i][j]);
        }

        fprintf(bank_tv, "%c", '_');

        fprintf(bank_tv, "%d", tabelaVerdade[i][34]);
        fprintf(bank_tv, "%c", '_');

       for(int j = 35; j < 67; j++){
            fprintf(bank_tv, "%d", tabelaVerdade[i][j]);
        }

        fprintf(bank_tv, "%c", '\n');
    }

    fclose(bank_tv);
    return 0;
}
