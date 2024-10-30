public class Aluno extends Pessoa {
    private String RA;
    
    @Override
    public String emitirSom(){
        return "59 arredonda pra 60?";
    }
    public String getRA() {
        return RA;
    }

    public void setRA(String rA) {
        RA = rA;
    }
}
