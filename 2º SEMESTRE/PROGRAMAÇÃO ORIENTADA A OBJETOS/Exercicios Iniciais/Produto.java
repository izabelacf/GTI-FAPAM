//Exercicio 3

public class Produto {
    private String nome;
    private int quantidade;
    private double preco;

    public Produto (String nome, double preco){
        this.nome=nome;
        this.preco=preco;
        this.quantidade=0;
    }

    public String getNome(){
        return nome;
    }

    public void setNome(String nome){
        this.nome=nome;
    }

    public double getPreco(){
        return preco;
    }

    public void setPreco(double preco){
        this.preco=preco;
    }

    public int getQuantidade(){
        return quantidade;
    }

    public void setQuantidade(int quantidade){
        this.quantidade=quantidade;
    }

    public void adicionarEstoque(int quantidade){
        if (quantidade>0) {
            this.quantidade+=quantidade;
        }
        else{
            System.out.println("Quantidade insuficiente ou inválida.");
        }
    }

    public void venderProduto(int quantidade){
        if (quantidade>0 && quantidade<=this.quantidade) {
            this.quantidade-=quantidade;
        }
        else{
            System.out.println("Quantidade insuficiente em estoque.");
        }
    }

    public void exibirProduto(){
        System.out.println("Produto: "+ nome);
        System.out.println("Preco: "+ preco);
        System.out.println("Quantidade em estoque: "+quantidade);
    }
}
