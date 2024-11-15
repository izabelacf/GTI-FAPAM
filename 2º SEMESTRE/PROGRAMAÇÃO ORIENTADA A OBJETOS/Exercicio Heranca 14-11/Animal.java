public abstract class Animal{
    private String nome;
    private int idade;
    private String tipoAlimentacao;

    public Animal(String nome, int idade, String tipoAlimentacao){
        setNome(nome);
        setIdade(idade);
        setTipoAlimentacao(tipoAlimentacao);
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        if(nome.length()>2)
            this.nome = nome;
    }

    public int getIdade() {
        return idade;
    }

    public void setIdade(int idade) {
        if(idade >= 0)
        this.idade = idade;
    }

    public String getTipoAlimentacao() {
        return tipoAlimentacao;
    }

    public void setTipoAlimentacao(String tipoAlimentacao) {
        this.tipoAlimentacao = tipoAlimentacao;
    }

    public String exibirInfo(){
        return "Nome: "+getNome()+ ", Idade: "+getIdade()+" meses"+", Tipo de Alimentação: "+getTipoAlimentacao();
    }

    public abstract String exibirHabitat();

}