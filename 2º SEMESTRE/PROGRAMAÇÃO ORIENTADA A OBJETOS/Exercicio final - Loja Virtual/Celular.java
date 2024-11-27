 public class Celular extends Produto{ //herda os atributos de produto
    private int garantia;
    private int estoque;

    public Celular (int codProduto, String nome, double preco, int garantia, int estoque){
        super(codProduto, nome, preco);
        this.garantia=garantia;
        setEstoque(estoque);
    }

    public int getEstoque() {
        return estoque;
    }

    public void setEstoque(int estoque) {
        this.estoque = estoque;
    }

    @Override

    public double calcularPreco(){ //Sobrescrita. calcularPreco esta na classe produto para calcular o preço do celular
        return getPreco()+(garantia*10);
    }
}
