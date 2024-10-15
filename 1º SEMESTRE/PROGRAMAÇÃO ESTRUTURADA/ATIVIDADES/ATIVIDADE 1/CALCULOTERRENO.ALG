Algoritmo "Valor de um terreno"
    // Descrição   : Calcula o preço para construir uma casa em um terreno retangular
    // Autor(a)    : Izabela Cristina
    // Data atual  : 16/02/2024

Var
    comprimento: real
    largura: real
    metro_quadrado: real
    preco_metro_quadrado: real
Inicio
    escreval ("Comprimento do lote")
    leia (comprimento)
    escreval ("Largura do lote")
    leia (largura)
    metro_quadrado <- comprimento*largura
    escreval ("Total m²", metro_quadrado)
    escreval ("Valor do m²= R$ 850,00")
    preco_metro_quadrado<- 850
    escreval ("Total da construção é de R$", metro_quadrado*preco_metro_quadrado)
Fimalgoritmo