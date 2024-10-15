Algoritmo "MEDIANOTA"
// Descrição   : Calcula a média entre três valores
// Autor(a)    : Izabela Cristina
// Data atual  : 16/02/2024

Var
    nome: caractere
    nota1: real
    nota2: real
    nota3: real
    total: real
    media: real
Inicio
    escreval ("Nome do aluno")
    leia (nome)
    escreval ("Primeira nota")
    leia (nota1)
    escreval ("Segunda nota")
    leia (nota2)
    escreval ("Terceira nota")
    leia (nota3)
    total <- nota1+nota2+nota3
    escreval ("Total", nota1+nota2+nota3)
    media <- total/3
    escreval ("Media:", media)

Fimalgoritmo