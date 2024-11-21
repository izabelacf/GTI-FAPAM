public class Musica extends Midia {
    private String artista;
    private String generoMusical;
    
    public Musica(String titulo, int anoLancamento, String categoria, String artista, String generoMusical){
        super(titulo, anoLancamento, categoria);
        this.artista=artista;
        this.generoMusical=generoMusical;
    }

    public String getArtista() {
        return artista;
    }

    public String getGeneroMusical() {
        return generoMusical;
    }

    @Override
    public String exibirInfo(){
        return "\nMúsica: " + getTitulo() +
        "\nCategoria: " + getCategoria() +
        "\nAno de Lançamento: " + getAnoLancamento() +
        "\nArtista: " + getArtista() +
        "\nGênero Musical: " + getGeneroMusical();
    }

    @Override
    public String tipoDeMidia(){
        return "Música";
    }
}
