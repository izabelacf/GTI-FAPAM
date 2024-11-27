import java.util.ArrayList;

public class Carrinho {
    private ArrayList<Produto> produtos; //array junto todos os produtos no carrinho

    public Carrinho(){
        this.produtos= new ArrayList<>();
    }

    public void adicionarProd(Produto produto){
        produtos.add(produto);
    }

    public void adicionarProd(Produto produto,int quantidade){ //sobrecarga. dois metodos com o mesmo nome mas com parametros diferentes
        for (int i = 0; i < quantidade; i++) {
            produtos.add(produto);
        }
    }

    public double calcularTotal() {
        double total = 0;
        for (Produto produto : produtos) {//Verifica se o produto é uma instância de Celular
            if (produto instanceof Celular) {
                Celular celular = (Celular) produto;
                total += celular.calcularPreco();
            } else {// Caso o produto não seja um Celular, soma o preço normalmente
                total += produto.calcularPreco();
            }
        }
        return total;
    }

    public String mostrarCarrinho(){
        String resumo="";
        for (Produto produto : produtos){
            resumo+="\n"+produto.getNome()+" -- Preço: "+produto.calcularPreco();
        }
        return resumo;
    }
}
