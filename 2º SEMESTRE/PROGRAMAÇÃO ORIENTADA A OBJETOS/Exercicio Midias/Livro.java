import java.util.ArrayList;

public class Livro extends Midia {
    private ArrayList<Autor>autores;
    private int numeroPaginas;

    public Livro(String titulo, int anoLancamento, String categoria, int numeroPaginas, ArrayList<Autor>autores){
        super(titulo, anoLancamento, categoria);
        this.autores= autores;
        this.numeroPaginas=numeroPaginas;
    }

    public int getNumeroPaginas() {
        return numeroPaginas;
    }

    public ArrayList<Autor> getAutores() {
        return autores;
    }

    @Override
    public String exibirInfo(){
        return "\nLivro: "+getTitulo()+
        "\nCategoria: "+getCategoria()+
        "\nAno de Lançamento: "+getAnoLancamento()+
        "\nNumero de Páginas: "+getNumeroPaginas()+
        "\nAutores: "+listarAutores();
    }

    @Override
    public String tipoDeMidia(){
        return "Livro";
    }

    public final String exibirResumo(){
        return "\nTitulo do Livro: "+getTitulo()+
        "\n Numero de Paginas do Livro: "+getNumeroPaginas()+
        "\n Ano de Lançamento: "+getAnoLancamento();
    }

    public boolean validarLivro(int paginasMinimas){
            return (getNumeroPaginas() >= paginasMinimas);
    }

    public String listarAutores(){
        String autoresLista="";
        for(int i=0;i<autores.size();i++){
            autoresLista+=autores.get(i).getNome();
                if(i < autores.size()-1){
                    autoresLista+= ", ";
                }
        }
        return autoresLista;
    }
}
