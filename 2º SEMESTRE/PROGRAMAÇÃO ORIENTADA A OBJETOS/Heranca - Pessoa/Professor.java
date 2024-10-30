public class Professor extends Pessoa {
    private float salario;

    public float getSalario() {
        return salario;
    }

    public void setSalario(float salario) {
        this.salario = salario;
    }

    public String emitirSom(){
        return "não, não arredonda.";
    }


}
