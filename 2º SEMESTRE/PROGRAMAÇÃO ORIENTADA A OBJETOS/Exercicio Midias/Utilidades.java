public class Utilidades {

    public static String exibirPorCategoria(Midia[]midias, String categoria, int quantidadeMidias){
        String retorno="";
        for( int i = 0; i < quantidadeMidias; i++){
            if(midias[i].getCategoria().equals(categoria)){
                retorno+= midias[i].exibirInfo()+"\n";
            }
        }
        return retorno;
    }

    public static int contarAutoresLivro(Midia [] midias, String tituloLivro){
        for (Midia midia:midias){
            if (midia instanceof Livro && midia.getTitulo().equals(tituloLivro)){
                return ((Livro) midia).getAutores().size();
            }
        }
        return 0;
    }
}
