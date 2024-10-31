//Exercicio 2

import java.util.Scanner;

public class Apppessoa {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        Pessoa people = new Pessoa();

        System.out.println("Digite seu nome: ");
        people.setNome(scanner.nextLine());

        System.out.println("Digite sua idade: ");
        people.setIdade(scanner.nextInt());

        System.out.println("Digite sua altura: ");
        people.setAltura(scanner.nextDouble());scanner.nextLine();

        Pessoa people2 = new Pessoa();
       
        System.out.println("Digite seu nome: ");
        people2.setNome(scanner.nextLine());

        System.out.println("Digite sua idade: ");
        people2.setIdade(scanner.nextInt());

        System.out.println("Digite sua altura: ");
        people2.setAltura(scanner.nextDouble());

        people.exibirdados();
        people2.exibirdados();
       

    }
}
