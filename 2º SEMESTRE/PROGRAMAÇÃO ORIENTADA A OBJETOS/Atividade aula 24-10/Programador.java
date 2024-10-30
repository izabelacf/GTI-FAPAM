public class Programador extends Funcionario {
    private String linguagem;

    public String getLinguagem() {
        return linguagem;
    }

    public void setLinguagem(String linguagem) {
        this.linguagem = linguagem;
    }

    public Programador(String nome, double salario, String linguagem){
        super(nome, salario);
        this.linguagem=linguagem;
    }

    @Override
    public String exibirDados(){
        return super.exibirDados() + ", Linguagem: "+linguagem;
    }
    
}
