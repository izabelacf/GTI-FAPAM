import java.util.Scanner;

public class Aplicativo{
    public static void main(String[] args) {
        Scanner entrada = new Scanner (System.in);
        Biblioteca biblioteca = new Biblioteca("Biblioteca books");
        boolean executando=true;

        while (executando) {
            System.out.println("\n----------------- Menu -----------=");
            System.out.println("1. Adicionar um livro                ");
            System.out.println("2. Exibir todos os livros            ");
            System.out.println("3. Exibir livros de um ano específico");
            System.out.println("4. Remover um livro                  ");
            System.out.println("5. Sair                              ");
            System.out.print("Escolha uma opção:                     ");
            int opcao = entrada.nextInt();
            entrada.nextLine();

            if (opcao == 1) {
               
                System.out.print("Digite o título do livro: ");
                String titulo = entrada.nextLine();
                System.out.print("Digite o autor do livro: ");
                String autor = entrada.nextLine();
                System.out.print("Digite o ano de publicação: ");
                int anoPublicacao = entrada.nextInt();
                entrada.nextLine();

                Livro livro = new Livro(titulo, autor, anoPublicacao);
                biblioteca.adicionarLivro(livro);
                System.out.println("Livro adicionado com sucesso!");

            } else if (opcao == 2) {

                System.out.println("\n--- Livros na Biblioteca ---");
                biblioteca.exibirLivros();

            } else if (opcao == 3) {
             
                System.out.print("Digite o ano de publicação: ");
                int ano = entrada.nextInt();
                entrada.nextLine();

                System.out.println("\n--- Livros de " + ano + " ---");
                biblioteca.exibirLivros(ano);

            } else if (opcao == 4) {
               
                System.out.print("Digite o título do livro a ser removido: ");
                String tituloRemover = entrada.nextLine();
                biblioteca.excluirLivro(tituloRemover);
                System.out.println("Livro removido!");

            } else if (opcao == 5) {
               
                System.out.println("Saindo...");
                executando = false;

            } else {
                System.out.println("Opção inválida. Tente novamente.");
            }
        }

    }
}
