import java.util.ArrayList;

public class Aplicativo {
    public static void main(String[] args) {
        
        Biblioteca biblioteca = new Biblioteca("Biblioteca Gamer");

        ArrayList<Autor>autoresLivro1 = new ArrayList<>();
        autoresLivro1.add(new Autor("John Winchester", 1954));
        autoresLivro1.add(new Autor("Mary Winchester", 1954));


        ArrayList<Autor>autoresLivro2 = new ArrayList<>();
        autoresLivro2.add(new Autor("Ilana Casoy", 1960));

        biblioteca.adicionarMidia(new Musica("Take Me Away", 2004, "rock", "Avril Lavigne", "pop/rock"));
        biblioteca.adicionarMidia(new Musica("Feel It Twice", 2019, "pop", "Camila Cabello", "pop"));
        biblioteca.adicionarMidia(new Musica("Toxicity", 2001, "rock", "System of a Down", "hard rock"));
        biblioteca.adicionarMidia(new Livro("O diario de John Winchester", 2009, "Terror", 224, autoresLivro1));
        biblioteca.adicionarMidia(new Livro("Casos de Familia", 2016, "true crime", 528,autoresLivro2));
        biblioteca.adicionarMidia(new Filme("A Casa de Cera", 2005, "Terror", "Jaume Collet-Serra", 113));
        biblioteca.adicionarMidia(new Filme("Pânico na Floresta", 2003, "Terror", "Rob Schmidt", 85));
        biblioteca.adicionarMidia(new Filme("Continencia ao Amor", 2022, "Romance", "Elizabeth Allen Rosenbaum", 122));

        System.out.println("\nLista completa de mídias: \n");
        System.out.println(biblioteca.listarMidias());

        String tituloBusca = "Casos de Familia";
        System.out.println("\nDetalhes da midia especifica: "+tituloBusca);
        System.out.println(biblioteca.exibirDetalhesMidia("Casos de Familia"));

        int anoBusca= 2005;
        System.out.println("\nQuantidade de midias lancadas no ano "+ anoBusca+": "+biblioteca.contarMidiasPorAno(anoBusca));

        String tituloLivroBusca= "O diario de John Winchester";
        int quantidadeAutores = Utilidades.contarAutoresLivro(biblioteca.getColecaoMidias(), tituloLivroBusca);
        System.out.println("\nQuantidade de autores do livro '"+tituloLivroBusca+"': "+quantidadeAutores);
    }
}
