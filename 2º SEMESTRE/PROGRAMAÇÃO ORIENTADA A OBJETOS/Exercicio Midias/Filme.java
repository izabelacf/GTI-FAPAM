public class Filme extends Midia {
 private String diretor;
 private int duracao;
 
    public Filme(String titulo, int anoLancamento, String categoria, String diretor, int duracao){
        super(titulo, anoLancamento, categoria);
        this.diretor=diretor;
        this.duracao=duracao;
    }

    public String getDiretor() {
        return diretor;
    }

    public int getDuracao() {
        return duracao;
    }

    @Override
    public String exibirInfo(){
        return "\nDiretor: "+getDiretor()+
        "\nDuração do Filme: "+getDuracao()+
        "\nFilme: "+getTitulo()+
        "\nCategoria: "+getCategoria()+
        "\nAno de Lançamento: "+getAnoLancamento();
    }

    @Override
    public String tipoDeMidia(){
        return "Filme";
    }
}
