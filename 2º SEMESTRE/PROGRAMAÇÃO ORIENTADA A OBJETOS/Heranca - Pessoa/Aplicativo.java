public class Aplicativo {
    public static void main(String[] args) {
        
        Pessoa normal = new Pessoa();

        normal.setNome("João");
        normal.setIdade(30);

        Aluno aluno = new Aluno();

        aluno.setCpf("1231");
        aluno.setNome("Maria");
        aluno.setRA("123456");


        Professor professor = new Professor();
        professor.setSalario(1500);


        System.out.println(normal.emitirSom());
        System.out.println(aluno.emitirSom());
        System.out.println(professor.emitirSom());
        


    }
}
