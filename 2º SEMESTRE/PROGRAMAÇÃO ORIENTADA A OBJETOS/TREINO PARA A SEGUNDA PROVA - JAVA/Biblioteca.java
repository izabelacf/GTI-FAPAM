import java.util.ArrayList;

public class Biblioteca {
    private String nome;
    private ArrayList<Livro> livros;

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public Biblioteca (String nome){
        this.nome=nome;
        this.livros = new ArrayList<>();
    }

    public void adicionarLivro(Livro livro){
        livros.add(livro);
    }

    public void exibirLivros(){
        for (Livro livro : livros){
            livro.exibirDetalhes(true);
        }
    }

    public void exibirLivros(int ano){
        for (Livro livro : livros){
            if(ano == livro.getAnoPublicacao()){
                System.out.println(getNome());
            }
        }

    }

    public void excluirLivro(String titulo) {
        for (Livro livro : livros) {
            if (titulo.equals(livro.getTitulo())) {
                System.out.println(livro.getTitulo() + "Livro removido com sucesso ");
            }
        }
        livros.removeIf(livro -> titulo.equals(livro.getTitulo()));
    }
}