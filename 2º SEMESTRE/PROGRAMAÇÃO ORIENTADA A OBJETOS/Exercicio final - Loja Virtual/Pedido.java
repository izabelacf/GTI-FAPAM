public class Pedido {
    private final int idPedido; //id nao pode ser alterado
    private Usuario usuario; //Composição; foi usado para pegar objetos de outras classes como atributos e ficarem interligadas
    private Carrinho carrinho;

    public Pedido(int idPedido, Usuario usuario, Carrinho carrinho) {
        this.idPedido = idPedido;
        this.usuario = usuario;
        this.carrinho = carrinho;
    }

    public int getIdPedido() {
        return idPedido;
    }

    public Usuario getUsuario() {
        return usuario;
    }

    public void setUsuario(Usuario usuario) {
        this.usuario = usuario;
    }

    public String mostrarPedido() {
        return "\nPedido ID: " + idPedido+
        "\nUsuário: " + usuario.getNome()+
        "\nTotal do Pedido: R$ " + carrinho.calcularTotal();
    }
}