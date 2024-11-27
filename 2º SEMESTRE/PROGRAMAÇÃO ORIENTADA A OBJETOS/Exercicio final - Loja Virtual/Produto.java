public abstract class Produto { //classe abstrata , produto nao é algo especifico
    private final int codProduto;
    private String nome;
    private double preco;

    public Produto(int codProduto, String nome, double preco){
        this.codProduto=codProduto;
        setNome(nome);
        setPreco(preco);
    }

    public int getCodProduto() {
        return codProduto;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }
   
    public double getPreco() {
        return preco;
    }

    public void setPreco(double preco) {
        this.preco = preco;
    }

    public abstract double calcularPreco(); //metodo abstrato

    public static double calcularDesconto(double precoOriginal, double porcentagemDesconto){//metodo estatico. nao depende de outras coisas e nem de outras informações alem do metodo
        return precoOriginal - (precoOriginal*(porcentagemDesconto/100));
    }
}