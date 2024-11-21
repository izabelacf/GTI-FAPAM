public class Autor{
    private String nome;
    private int anoNascimento;

    public Autor(String nome, int anoNascimento){
        setNome(nome);
        setAnoNascimento(anoNascimento);
    }

    public int getAnoNascimento() {
        return anoNascimento;
    }

    public void setAnoNascimento(int anoNascimento) {
        this.anoNascimento = anoNascimento;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String exibirAutor(){
        return "Autor: "+getNome()+", Nascido em: "+getAnoNascimento();
    }

    public int calcularIdade(int anoAtual){
        return (getAnoNascimento()-anoAtual);
    }
}