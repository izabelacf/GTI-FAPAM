public class Aplicativo {
    public static void main(String[] args) {
        
        Funcionario normal = new Funcionario("Daniel",10.000);
        System.out.println("Dados do Funcionário: ");
        System.out.println(normal.exibirDados());

        Gerente gerente = new Gerente ("Ronaldo",7.000,500);
        System.out.println("Dados do Gerente: ");
        System.out.println(gerente.exibirDados());

        Programador programadora = new Programador ("Izabela",1.500,"Java");
        System.out.println("Dados do Programador: ");
        System.out.println(programadora.exibirDados());
    }
    
}
