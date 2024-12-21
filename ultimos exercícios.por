programa
{
	
	inclua biblioteca Texto --> tx
    	inclua biblioteca Util 
	
	funcao inicio()
	{
		escreva("Exercício 15: Verificar igualdade de vetores\n")
	        inteiro vetorX[5] = {1, 2, 3, 4, 5}
	        inteiro vetorY[5] = {1, 2, 3, 4, 5}
	        logico iguais = verificaIgualdadeVetores(vetorX, vetorY, 5)
	        escreva("Os vetores são iguais? ", iguais, "\n")
	
	        escreva("Exercício 16: Maior elemento da matriz e sua posição\n")
	        inteiro matrizZ[3][3] = {{1, 2, 3}, {4, 5, 6}, {7, 8, 9}}
	        inteiro maiorValor =0 , linhaMaior = 0, colunaMaior = 0
	        maiorElementoMatriz(matrizZ, 3, 3, maiorValor, linhaMaior, colunaMaior)
	        escreva("Maior valor: ", maiorValor, " Linha: ", linhaMaior, " Coluna: ", colunaMaior, "\n")
	
	        escreva("Exercício 17: Multiplicação de matrizes\n")
	        inteiro matrizaa[2][2] = {{1, 2}, {3, 4}}
	        inteiro matrizB[2][2] = {{5, 6}, {7, 8}}
	        inteiro matrizResultado[2][2]
	        multiplicaMatrizes(matrizaa, matrizB, matrizResultado, 2, 2, 2)
	        escreva("Matriz Resultado:\n")
	        para (inteiro i = 0; i < 2; i++) {
	            para (inteiro j = 0; j < 2; j++) {
	                escreva(matrizResultado[i][j], " ")
	            }
	            escreva("\n")
	        }
	
	        escreva("Exercício 18: Soma da diagonal principal\n")
	        inteiro matrizDiagonal[3][3] = {{1, 2, 3}, {4, 5, 6}, {7, 8, 9}}
	        inteiro somaDiagonal = somaDiagonalPrincipal(matrizDiagonal, 3)
	        escreva("Soma da diagonal principal: ", somaDiagonal, "\n")
	
	        escreva("Exercício 19: Preencher vetor e exibir pares\n")
	        inteiro vetorEntrada[6]
	        preencheVetorComPares(vetorEntrada, 6)
	        escreva("Valores pares do vetor: ")
	        para (inteiro i = 0; i < 6; i++) {
	            escreva(vetorEntrada[i], " ")
	        }
	        escreva("\n")
	
	        escreva("Exercício 20: Soma das colunas de uma matriz\n")
	        inteiro matrizSoma[2][3] = {{1, 2, 3}, {4, 5, 6}}
	        inteiro somaColunas[3]
	        somaColunasMatriz(matrizSoma, somaColunas, 2, 3)
	        escreva("Soma das colunas: ")
	        para (inteiro i = 0; i < 3; i++) {
	            escreva(somaColunas[i], " ")
	        }
	        escreva("\n")
	}

		funcao logico verificaIgualdadeVetores(inteiro vetor1[], inteiro vetor2[], inteiro tamanho) {
        para (inteiro i = 0; i < tamanho; i++) {
            se (vetor1[i] != vetor2[i]) {
                retorne falso
            }
        }
        retorne verdadeiro
    }

    funcao vazio maiorElementoMatriz(inteiro matriz[][], inteiro linhas, inteiro colunas, inteiro referenciaMaior, inteiro linhaReferencia, inteiro colunaReferencia) {
        referenciaMaior = matriz[0][0]
        linhaReferencia = 0
        colunaReferencia = 0
        para (inteiro i = 0; i < linhas; i++) {
            para (inteiro j = 0; j < colunas; j++) {
                se (matriz[i][j] > referenciaMaior) {
                    referenciaMaior = matriz[i][j]
                    linhaReferencia = i
                    colunaReferencia = j
                }
            }
        }
    }

    funcao vazio multiplicaMatrizes(inteiro matriz1[][], inteiro matriz2[][], inteiro resultado[][], inteiro linha1, inteiro coluna1, inteiro coluna2) {
        para (inteiro i = 0; i < linha1; i++) {
            para (inteiro j = 0; j < coluna2; j++) {
                resultado[i][j] = 0
                para (inteiro k = 0; k < coluna1; k++) {
                    resultado[i][j] += matriz1[i][k] * matriz2[k][j]
                }
            }
        }
    }

    funcao inteiro somaDiagonalPrincipal(inteiro matriz[][], inteiro tamanho) {
        inteiro soma = 0
        para (inteiro i = 0; i < tamanho; i++) {
            soma += matriz[i][i]
        }
        retorne soma
    }

    funcao vazio preencheVetorComPares(inteiro vetor[], inteiro tamanho) {
        inteiro valor
        para (inteiro i = 0; i < tamanho; i++) {
            escreva("Informe um valor: ")
            leia(valor)
            se (valor % 2 == 0) {
                vetor[i] = valor
            } senao {
                vetor[i] = 0
            }
        }
    }

    funcao vazio somaColunasMatriz(inteiro matriz[][], inteiro resultado[], inteiro linhas, inteiro colunas) {
        para (inteiro j = 0; j < colunas; j++) {
            resultado[j] = 0
            para (inteiro i = 0; i < linhas; i++) {
                resultado[j] += matriz[i][j]
            }
        }
    }

	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 4505; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */