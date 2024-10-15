Algoritmo "Valor por hora"
    // Descrição   : Calcula quanto um indivíduo recebe por hora
    // Autor(a)    : Izabela Cristina
    // Data atual  : 16/02/2024
Var
    salario: real
    horas: real
    valor_por_hora: real
Inicio
    escreval ("Qual é o seu salário?")
    leia (salario)
    escreval ("Quantas horas você trabalha por dia?")
    leia (horas)
    valor_por_hora <- salario/30/horas
    escreval ("Você recebe R$", valor_por_hora, " por cada hora trabalhada")
Fimalgoritmo