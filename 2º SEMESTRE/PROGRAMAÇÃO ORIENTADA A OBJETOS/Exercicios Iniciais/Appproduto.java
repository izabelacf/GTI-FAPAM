import java.util.Scanner;

public class Appproduto {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);


        System.out.println("Digite o nome do primeiro produto: ");
        String nome1 = scanner.nextLine();
        System.out.println("Insira o valor do primeiro produto: ");
        double preco1 = scanner.nextDouble();
        Produto produto = new Produto(nome1, preco1);
       

        System.out.println("Qual o estoque total do primeiro produto? ");
        int estoque1 = scanner.nextInt();
        produto.adicionarEstoque(estoque1);
        scanner.nextLine();

   
        System.out.println("Digite o nome do segundo produto: ");
        String nome2 = scanner.nextLine();
        System.out.println("Insira o valor do segundo produto: ");
        double preco2 = scanner.nextDouble();
        Produto produto2 = new Produto(nome2, preco2);
     
        System.out.println("Qual o estoque total do segundo produto? ");
        int estoque2 = scanner.nextInt();
        produto2.adicionarEstoque(estoque2);

        System.out.println("Digite a quantidade para vender do primeiro produto: ");
        int venderQuantidade = scanner.nextInt();
        produto.venderProduto(venderQuantidade);

        System.out.println("\nDados do primeiro produto:");
        produto.exibirProduto();
       
        System.out.println("\nDados do segundo produto:");
        produto2.exibirProduto();
    }
}

