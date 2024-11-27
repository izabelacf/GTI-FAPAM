public class Validador {
    public static boolean validarDesconto(Produto produto, double desconto){
        double precoDesconto = Produto.calcularDesconto(produto.getPreco(), desconto);
        // Verifica se o preço com desconto é maior que zero
        return precoDesconto > 0;
    }

    public static boolean validarEstoque(int estoque){//metodo estatico. nao depende de outras coisas e nem de outras informações alem do metodo
        return estoque>0;
    }
}