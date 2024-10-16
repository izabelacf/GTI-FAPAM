Algoritmo "lanchonete"
Var
    totalConta: real
    opcao, SN, produtos: caractere
Inicio
    totalConta <- 0
    produtos <- ""
    escreval ("           CARDAPIO              ")
    escreval ("1- COXINHA:               R$ 6,00")
    escreval ("2- PASTEL:                R$ 5,00")
    escreval ("3- EMPADA:                R$ 5,50")
    escreval ("4- PÃO DE QUEIJO:         R$ 4,50")
    escreval ("---------------------------------")
    escreval ("O que gostaria de pedir?")
    leia (opcao)
    escolha (opcao)
        caso "1"
        totalConta <- totalConta+6
        produtos <- "1- COXINHA: R$ 6.00"
        caso "2"
        totalConta <- totalConta+5
        produtos <- "2- PASTEL: R$ 5.00"
        caso "3"
        totalConta <- totalConta+5.50
        produtos <- "3- EMPADA: R$ 5.50"
        caso "4"
        totalConta <- totalConta+4.50
        produtos <- "4- PÃO DE QUEIJO: R$ 4.50"
    fimescolha
    escreval ("Gostaria de pedir algo mais?")
    leia (SN)
    se (SN="nao") entao
        escreval ("RESUMO DO PEDIDO")
        escreval (produtos)
        escreval ("TOTAL: R$", totalConta:4:2)
    fimse
    enquanto (SN ="sim") faca
        escreval ("            CARDAPIO          ")
        escreval ("1- COXINHA:            R$ 6,00")
        escreval ("2- PASTEL:             R$ 5,00")
        escreval ("3- EMPADA:             R$ 5,50")
        escreval ("4- PÃO DE QUEIJO:      R$ 4,50")
        escreval ("5- ENCERRAR A COMPRA          ")
        escreval ("------------------------------")
        escreval ("O que gostaria de pedir?")
    leia (opcao)
    escolha (opcao)
        caso "1"
        totalConta <- totalConta+6
        produtos <- "1- COXINHA: R$ 6.00"
        caso "2"
        totalConta <- totalConta+5
        produtos <- "2- PASTEL: R$ 5.00"
        caso "3"
        totalConta <- totalConta+5.50
        produtos <- "3- EMPADA: R$ 5.50"
        caso "4"
        totalConta <- totalConta+4.50
        produtos <- "4- PÃO DE QUEIJO: R$ 4.50"
        caso "5"
        escreval ("------------------")
        escreval ("RESUMO DO PEDIDO")
        escreval (produtos)
        escreval ("TOTAL: R$", totalConta:4:2)
    fimescolha
    escreval ("Gostaria de pedir algo mais?")
    leia (SN)
    se (SN="nao") entao
        escreval ("RESUMO DO PEDIDO")
        escreval (produtos)
        escreval ("TOTAL: R$", totalConta:4:2)
    fimse
    fimenquanto
Fimalgoritmo