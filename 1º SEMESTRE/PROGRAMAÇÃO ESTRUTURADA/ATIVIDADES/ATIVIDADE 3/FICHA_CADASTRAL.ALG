Algoritmo "ficha_cadastral"
    //Data inicial:01/03/2024
Var
    nome: caractere
    sexo:caractere
    ano:inteiro
    cidade:caractere
    idade: inteiro
Inicio
    escreval ("Olá. Qual seu nome completo?")
    leia (nome)
    escreval ("Qual seu sexo? EX: masculino/feminino")
    leia (sexo)
    se(sexo= "feminino") entao
    sexo <- "Sra:"
    senao
    se (sexo= "masculino") entao
    sexo<- "Sr:"
    senao escreva ("Desculpe, não esta cadastrado")
    fimse
    fimse
    escreval ("Em que cidade você nasceu")
    leia (cidade)
    escreval ("Em que ano você nasceu?")
    leia (ano)
    idade<- (2024-ano)
    escreval ("FICHA CADASTRAL")
    escreval ( sexo , nome)
    escreval ("idade: ",idade," anos")
    escreval ("cidade: ", cidade)
Fimalgoritmo
