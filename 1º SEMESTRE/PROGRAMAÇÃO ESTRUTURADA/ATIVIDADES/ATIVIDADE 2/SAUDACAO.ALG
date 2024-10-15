Algoritmo "SAUDACAO"
    // Data atual: 23/02/2024
    // Descrição: Imprime a saudação dependendo do sexo da pessoa
Var
    nome : caracter
    sexo : caracter
Inicio
    escreval("qual é seu nome?")
    leia(nome)
    escreval("qual seu sexo?(exemplo : masculino/feminino)")
    leia(sexo)
    se(sexo = "masculino") entao
    escreval("seja bem-vindo,",nome)
    senao
    escreval("seja bem-vinda,",nome)
    fimse
Fimalgoritmo