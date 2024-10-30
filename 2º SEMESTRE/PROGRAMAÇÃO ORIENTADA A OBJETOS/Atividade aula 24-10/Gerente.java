public class Gerente extends Funcionario {
    private double bonus;

    public double getBonus() {
        return bonus;
    }

    public void setBonus(double bonus) {
        this.bonus = bonus;
    }

    public Gerente (String nome, double salario, double bonus){
        super(nome, salario);
        setBonus(bonus);
    }

    @Override
    public String exibirDados(){
        return super.exibirDados() + ", Bonus: "+getBonus();
    }
}
