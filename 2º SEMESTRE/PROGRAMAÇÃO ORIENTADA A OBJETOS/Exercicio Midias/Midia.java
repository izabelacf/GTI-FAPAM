public abstract class Midia {
    private String titulo;
    private int anoLancamento;
    private String categoria;

    public Midia (String titulo, int anoLancamento, String categoria){
        this.titulo=titulo;
        this.anoLancamento=anoLancamento;
        this.categoria=categoria;
    }

    public int getAnoLancamento() {
        return anoLancamento;
    }

    public String getCategoria() {
        return categoria;
    }

    public String getTitulo() {
        return titulo;
    }

    public abstract String exibirInfo();
    public abstract String tipoDeMidia();
}
