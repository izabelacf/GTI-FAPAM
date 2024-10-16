Algoritmo "Soma de Números"
Var
    quantidade, contador: inteiro
    numero, soma: real
    continuar: caractere
Inicio
    soma <- 0
    escreva("Quantidade de números a serem somados: ")
    leia(quantidade)
    para contador de 1 ate quantidade faca
    escreva("Digite o número ", contador, ": ")
    leia(numero)
    soma <- soma + numero
    se contador < quantidade entao
    escreva("Deseja continuar digitando números? (sim/nao): ")
    leia(continuar)
    se continuar <> "sim" entao
    interrompa
    fimse
    fimse
    fimpara
    escreva("A soma dos números digitados é: ", soma)
Fimalgoritmo