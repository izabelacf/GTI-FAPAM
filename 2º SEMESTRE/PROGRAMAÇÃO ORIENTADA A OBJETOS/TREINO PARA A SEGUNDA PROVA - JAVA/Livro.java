public class Livro {
    private String titulo;
    private String autor;
    private int anoPublicacao;
    private final int codigoLivro;
    
    public Livro(String titulo, String autor,int anoPublicacao, final int codigoLivro){
        this.titulo=titulo;
        this.autor=autor;
        this.anoPublicacao=anoPublicacao;
        this.codigoLivro=codigoLivro;
    }

    public Livro(String titulo, int anoPublicacao){
        this.titulo=titulo;
        this.anoPublicacao=2024;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getAutor() {
        return autor;
    }

    public void setAutor(String autor) {
        this.autor = autor;
    }

    public int getAnoPublicacao() {
        return anoPublicacao;
    }

    public void setAnoPublicacao(int anoPublicacao) {
        this.anoPublicacao = anoPublicacao;
    }

    public int getCodigoLivro() {
        return codigoLivro;
    }

    public void exibirDetalhes(){
        System.out.println("Titulo: "+this.getTitulo());
        System.out.println("Autor: "+this.getAutor());
    } 


    public void exibirDetalhes(boolean exibirAno){
        if (exibirAno){
            return "Titulo: "+titulo+ ", Autor: "+autor+", Ano de publicacao: "+anoPublicacao; 
        } else {
            return exibirDetalhes();
        }

    }

    
}