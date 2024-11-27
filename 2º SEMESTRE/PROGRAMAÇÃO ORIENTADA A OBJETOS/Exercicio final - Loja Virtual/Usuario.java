public final class Usuario extends Pessoa { //herda o nome e cpf de pessoa
    private int telefone; //usuario classe final. o usuario nao pode ser alterado
 
     public Usuario(String nome, String cpf, int telefone){
        super(nome, cpf);
        setTelefone(telefone);
     }
 
     public int getTelefone() {
         return telefone;
     }
 
     public void setTelefone(int telefone) {
         this.telefone = telefone;
     }
    
     public final String mostrarDetalhes(){ // metodo final que nao pode ser mudado, visto que o cpf tambem nao muda
         return "\nUsuario "+getNome()+", CPF: "+getCpf()+", telefone: "+getTelefone();
     }
 }