public class AplicativoZoo {
    public static void main(String[] args) {

        Zoo zoo = new Zoo("Zoológico RDR");

        zoo.adicionarAnimal(new Mamifero("Urso", 3, "Carnivoro", 10));
        zoo.adicionarAnimal(new Mamifero("Coelho de Cauda-Negra", 2, "Herbivoro", 2));
        zoo.adicionarAnimal(new Ave("Garça Tricolor",1, "Onivoro", true));
        zoo.adicionarAnimal(new Ave("Gaio Azul", 2, "Onivoro", false));
       
        

        System.out.println("\n\nInformações de todos os animais no zoológico:\n");
        System.out.println(zoo.exibirTodosAnimais());

        System.out.println("\nHabitats específicos de cada animal:\n");
        System.out.println(zoo.exibirHabitats());

        System.out.println("\n\nRemovendo um animal:\n\n");
        System.out.println(zoo.removerAnimais("Urso").getNome());
        System.out.println("\nAnimais depois da remoção:");
        System.out.println(zoo.exibirTodosAnimais());

        System.out.println("\nMamíferos com gestação curta:\n");
        System.out.println(zoo.exibirMamiferosGestacaoCurta());
    }
    
}
