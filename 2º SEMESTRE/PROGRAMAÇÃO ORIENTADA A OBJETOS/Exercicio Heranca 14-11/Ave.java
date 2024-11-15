public class Ave extends Animal {
    private boolean migratoria;

    public Ave(String nome, int idade, String tipoAlimentacao, boolean migratoria){
        super(nome, idade, tipoAlimentacao);
        setMigratoria(migratoria);
    }

    public boolean isMigratoria() {
        return migratoria;
    }

    public void setMigratoria(boolean migratoria) {
        this.migratoria = migratoria;
    }

    @Override
    public String exibirInfo(){
        return super.exibirInfo()+ ", Migratoria: "+ (isMigratoria() ? "Sim":"Não");
    }

    @Override
    public String exibirHabitat(){
        return " terrestre, aéreo e aquático, dependendo de cada espécie";
    }
}
