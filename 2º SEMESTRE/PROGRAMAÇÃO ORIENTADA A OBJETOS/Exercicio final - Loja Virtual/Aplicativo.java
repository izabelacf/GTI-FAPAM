import java.util.Scanner;

public class Aplicativo{
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.println("Cadastro de novo usuario:");
        System.out.println("Insira seu nome: ");

        String nome1= scanner.nextLine();

        System.out.println("Insira seu CPF:");
        String CPF1= scanner.nextLine();

        System.out.println("Cadastro de novo usuario:");
        System.out.println("Insira seu nome: ");

        String nome2= scanner.nextLine();

        System.out.println("Insira seu CPF:");
        String CPF2= scanner.nextLine();
       
        Usuario cliente1 = new Usuario(nome1, CPF1,99999);
        Usuario cliente2= new Usuario(nome2, CPF2,888888);

        System.out.println(cliente1.mostrarDetalhes());
        System.out.println(cliente2.mostrarDetalhes());

        Celular apple = new Celular(1, "Iphone 11", 4000, 3, 15);
        Celular Samsung = new Celular(2, "S24 Ultra", 8000, 6, 20);

        Carrinho carrinho1 = new Carrinho();
        carrinho1.adicionarProd(apple,2);
        carrinho1.adicionarProd(Samsung,1);

        Carrinho carrinho2 = new Carrinho();
        carrinho2.adicionarProd(apple,3);
        carrinho2.adicionarProd(Samsung,4);

        System.out.println(carrinho1.mostrarCarrinho());
        System.out.println(carrinho2.mostrarCarrinho());
       
        Pedido pedido1 = new Pedido(1, cliente1, carrinho1);
        Pedido pedido2 = new Pedido(2, cliente2, carrinho2);

        System.out.println(pedido1.mostrarPedido());
        System.out.println(pedido2.mostrarPedido());

        System.out.println("\nPreço com desconto do pedido 1:");
        System.out.println("Total: "+ Produto.calcularDesconto(carrinho1.calcularTotal(),10));

        System.out.println("\nPreço com desconto do pedido 2:");
        System.out.println("Total: "+ Produto.calcularDesconto(carrinho2.calcularTotal(),10));

        scanner.close();

    }
}
