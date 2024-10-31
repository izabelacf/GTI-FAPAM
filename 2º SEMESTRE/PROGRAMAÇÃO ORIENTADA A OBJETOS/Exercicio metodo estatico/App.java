public class App {
    public static void main(String[] args) {
        Fornecedor forne1=new Fornecedor("Fornecedor 1","11111111/000","fornecedor1@gmail.com");
        Fornecedor forne2=new Fornecedor("Fornecedor 2","22222222/000","fornecedor2@gmail.com");

        Produto produto1=new Produto("Playstation 5 PRO",7000,0,forne1);
        Produto produto2=new Produto ("Notebook",3000,0,forne2);

        produto1.ajusteQtd(60);
        produto1.ajusteQtd (-5);
        produto1.ajusteQtd (-25);

        System.out.println("----------------------------------------------");
       
        produto2.ajusteQtd(40);
        produto1.ajusteQtd (5);
        produto1.ajusteQtd (-5);

        System.out.println("----------------------------------------------");
        System.out.println("Valor total em reais do " +produto1.getNome()+" é de "+ produto1.calculoValor());
        System.out.println("----------------------------------------------");
       
        double taxaCambio=5.0;
        double valorEmDolares = Conversor.converteDolar(produto1, taxaCambio);
        System.out.println("O valor do "+produto1.getNome()+" que temos no estoque de dólar é "+valorEmDolares);

        System.out.println("----------------------------------------------");

        System.out.println(Conversor.valorDesconto(produto1,15));
        System.out.println(Conversor.valorDesconto(produto2, 50));

        System.out.println("----------------------------------------------");



    }
}
