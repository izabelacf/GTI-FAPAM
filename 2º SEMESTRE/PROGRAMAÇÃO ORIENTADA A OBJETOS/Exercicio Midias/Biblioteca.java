public class Biblioteca {
    private String nome;
    private Midia[]colecaoMidias;
    private int contador;

    public Biblioteca(String nome){
        setNome(nome);
        colecaoMidias= new Midia[20];
        this.contador=0;
    }

    public Midia[] getColecaoMidias() {
        return colecaoMidias;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public void adicionarMidia(Midia midia){
        if(contador < colecaoMidias.length){
            colecaoMidias[contador]=midia;
            contador++;
        }
    }

    public String listarMidias(){
        String info="";

        for(int i=0; i < contador;i++){
            info+=colecaoMidias[i].exibirInfo();
            info+="\n";
        }
        return info;
    }

    public String exibirDetalhesMidia (String titulo){
        for(int i=0; i < contador; i++){
            if(colecaoMidias[i].getTitulo().equals(titulo)){
                return colecaoMidias[i].exibirInfo();
            }
        }
        return "Midia não encontrada";
    }

    public int contarMidiasPorAno(int ano){
        int contadorAno=0;
        for (int i= 0; i < contador; i++){
            if(colecaoMidias[i].getAnoLancamento() == ano){
                contadorAno++;
            }
        }
        return contadorAno;
    }

    
}
