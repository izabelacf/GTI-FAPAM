public class Zoo {
    private String nomeZoo;
    private Animal []animais;
    private int contAnimais;

    public Zoo(String nomeZoo){
        setNomeZoo(nomeZoo);
        animais= new Animal[10];
        this.contAnimais=0;
    }

    public String getNomeZoo() {
        return nomeZoo;
    }

    public void setNomeZoo(String nomeZoo) {
        this.nomeZoo = nomeZoo;
    }

    public int getContAnimais() {
        return contAnimais;
    }

    public void adicionarAnimal(Animal animal){
        if (contAnimais < animais.length){
            animais[contAnimais]= animal;
            contAnimais++;
        } else {
            System.out.println("O zoológico está cheio. Desculpe!");
        }
    }

    public String exibirTodosAnimais(){
        String info= "";

        for (int i=0; i <contAnimais; i++){
        info+=animais[i].exibirInfo();
        info+="\n";
        }

        return info;
    }

    //adicionei tambem o metodo para remover animais
    public Animal removerAnimais(String nome){
        Animal retorno = null;
        for(int i=0;i<contAnimais;i++){
            if(animais[i].getNome().equals(nome)){
                retorno=animais[i];
                while(i<=contAnimais){
                    animais[i]=animais[i+1];
                    i++;
                }
                contAnimais--;
                break;
            }
        }
        return retorno;
    }

    public String exibirHabitats(){
        String habitats="";

        for(int i=0; i < contAnimais; i++){
            habitats+= animais[i].exibirHabitat();
            habitats+="\n";
        }

        return habitats;
    }

    public String exibirMamiferosGestacaoCurta() {
        String resultado = "";
    
        for (int i = 0; i < contAnimais; i++) {
            if (animais[i] instanceof Mamifero) {
                if(((Mamifero)animais[i]).getTempoGestacao()<3){
                    resultado+=(((Mamifero)animais[i]).getNome());
                    resultado+="\n";
                }
            }
        }
        return resultado;
    }
}
