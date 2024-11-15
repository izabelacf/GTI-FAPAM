public class Mamifero extends Animal {
    private int tempoGestacao;

    public Mamifero(String nome, int idade, String tipoAlimentacao, int tempoGestacao){
        super(nome, idade, tipoAlimentacao);
        setTempoGestacao(tempoGestacao);
    }

    public int getTempoGestacao() {
        return tempoGestacao;
    }

    public void setTempoGestacao(int tempoGestacao) {
        this.tempoGestacao = tempoGestacao;
    }

    @Override
    public String exibirInfo(){
        return super.exibirInfo() +", Tempo de gestação: "+getTempoGestacao()+ " meses";
    }

    @Override
    public String exibirHabitat(){
        return " água doce, água salgada, ar e terra firme.";
    }

}
