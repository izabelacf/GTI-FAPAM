Algoritmo "IMC"
    // Descrição   : Calcula o IMC de uma pessoa
    // Autor(a)    : Izabela Cristina
    // Data atual  : 16/02/2024
Var
    nome: caractere
    peso: real
    altura: real
    IMC: real
Inicio
    escreval ("Qual seu nome?")
    leia (nome)
    escreval ("Qual seu peso?")
    leia (peso)
    escreval ("Qual sua altura?")
    leia (altura)
    IMC <- peso/altura^2
    escreval ("O seu IMC é", IMC)
Fimalgoritmo