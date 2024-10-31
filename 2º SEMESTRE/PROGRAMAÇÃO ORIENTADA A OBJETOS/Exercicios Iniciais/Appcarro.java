//Exercicio 1

import java.util.Scanner;

public class Appcarro {
    public static void main(String[] args) {
        Scanner ler = new Scanner(System.in);
        Carro mod = new Carro("uninho","fiat",2024);

        System.out.println("Marca: "+mod.getMarca());
        System.out.println("Modelo: "+mod.getModelo());
        System.out.println("Ano: "+mod.getAno());

        mod.setAno(2000);
        System.out.println("Marca: "+mod.getMarca());
        System.out.println("Modelo: "+mod.getModelo());
        System.out.println("Ano: "+mod.getAno());
       
       

    }
}
