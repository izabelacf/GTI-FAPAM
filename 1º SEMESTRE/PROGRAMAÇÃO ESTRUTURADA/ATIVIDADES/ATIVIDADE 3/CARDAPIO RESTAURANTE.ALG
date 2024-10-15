Algoritmo "CARDAPIO_RESTAURANTE"
    //Data atual:01/03/2024
Var
    CodComida: inteiro
    comida: caractere
    ValorC :real
    CodBebida: inteiro
    ValorB: inteiro
    bebida: caractere
Inicio
    escreval ("      Cardapio de refeição        ")
    escreval (------------------------------------)
    escreval ("1- Risotto                R$ 25,00")
    escreval ("2- Espaguete              R$ 22,00")
    escreval ("3- Cachorro quente        R$ 23,00")
    escreval ("4- Hamburguer             R$ 27,00")
    escreval ("Qual o numero da sua refeição. Numeros: 1 a 4")
    leia (CodComida)
    escolha (CodComida)
        caso 1
        comida<- "Risotto"
        ValorC<- 25,00
        caso 2
        comida<- "Espaguete"
        ValorC<- 22,00
        caso 3
        comida<- "Cachorro quente"
        ValorC<- 23,00
        caso 4
        comida<- "Hamburguer"
        ValorC<- 27,00
        fimescolha
    escreval ("Você deseja tomar alguma bebida?")
    leia (bebida)
    se (bebida ="nao") entao
    escreval ("Pedido:", comida )
    escreval ("O valor do seu prato é de R$", ValorC)
    fimalgoritmo
    fimse
    se (bebida ="sim") entao
        escreval (---------------------------------------------)
        escreval ("1– Coca Cola                        R$ 5,00")
        escreval ("2- Água Mineral                     R$ 3,00")
        escreval ("3- Suco natural                     R$ 5,00")
        escreval ("4- Cerveja                          R$ 6,00")
        escreval ("Qual o numero da sua bebida? Numeros: 1 a 4")
        leia (CodBebida)
        escolha (CodBebida)
            caso 1
            bebida<- "Coca Cola"
            ValorB<- 5,00
            caso 2
            bebida<- "Água Mineral"
            ValorB<- 3,00
            caso 3
            bebida<- "Suco Natural"
            ValorB<- 5,00
            caso 4
            bebida<- "Cerveja"
            ValorB<- 6
            fimescolha
        escreval ("Pedido:", comida, " e ", bebida)
        escreval ("O valor do seu pedido é de R$", ValorC+ValorB)
        fimse
Fimalgoritmo