package aula08;

import java.util.List;

public abstract class Alimento {
    protected String nome;
    protected double proteina;
    protected double calorias;
    protected double peso;
    private String

    public Alimento(String nome, double proteina, double calorias, double peso) {
        this.nome = nome;
        this.proteina = proteina;
        this.calorias = calorias;
        this.peso = peso;
    }

    public String getNome() {
        return nome;
    }

    public double getProteina() {
        return (proteina*peso)/100;
    }

    public double getCalorias() {
        return (calorias*peso)/100;
    }

    public double getPeso() {
        return peso;
    }
}

public class Carne extends Alimento {
    private String VariedadeCarne;

    public Carne(String nome, double proteina, double calorias, double peso, String variedade) {
        super(nome, proteina, calorias, peso);
        this.VariedadeCarne = variedade;
    }


    public String getVariedadeCarne() {
        return this.VariedadeCarne;
    }

    public void setVariedadeCarne(String variedadeCarne) {
        this.VariedadeCarne = variedadeCarne;
    }
    
}

public class Peixe extends Alimento {
    private String TipoPeixe;

    public Peixe(String TipoPeixe, double proteina, double calorias, double peso) {
        super("Peixe (" + TipoPeixe + ")", proteina, calorias, peso);
        this.TipoPeixe=TipoPeixe;
    }

    public String getTipo() {
        return TipoPeixe;
    }
}

public class Cereal extends Alimento {
    public Cereal(String nome, double proteina, double calorias, double peso) {
        super(nome, proteina, calorias, peso);
    }
}

public class Legume extends Alimento {
    public Legume(String nome, double proteina, double calorias, double peso) {
        super(nome, proteina, calorias, peso);
    }
}

public class Prato {
    private String nome;
    private List<Alimento> alimentos;

    public Prato(String nome, List<Alimento> alimentos) {
        this.nome = nome;
        this.alimentos = alimentos;
    }

    private String 

    public Prato(String nome) {
        this.nome = nome;
        this.alimentos = Math.random()
    }

    public String getNome() {
        return nome;
    }

    public List<Alimento> getAlimentos() {
        return alimentos;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public void setAlimentos(List<Alimento> alimentos) {
        this.alimentos = alimentos;
    }

    public boolean CompareCkl(){
        return this.alimentos.get(0).getNome().equals("Cake");
    
    }

    public void addIngrediente(Alimento p){
        this.alimentos.add(p);
    }

    public void removeIngrediente(Alimento p){
        this.alimentos.remove(p);
    }

    
}

public class PratoVegetariano extends Prato {
    public PratoVegetariano(String nome, List<Alimento> alimentos) {
        super(nome, alimentos);
    }
}

public class PratoDieta extends Prato {
    private double limiteCalorias;

    public PratoDieta(String nome, List<Alimento> alimentos, double limiteCalorias) {
        super(nome, alimentos);
        this.limiteCalorias = limiteCalorias;
    }

    public double getLimiteCalorias() {
        return limiteCalorias;
    }

    public void setLimiteCalorias(double limiteCalorias) {
        this.limiteCalorias = limiteCalorias;
    }
    
}

public class Ementa {
    private String nome;
    private String local;
    private List<Prato> pratos;

    public Ementa(String nome, String local, List<Prato> pratos) {
        this.nome = nome;
        this.local = local;
        this.pratos = pratos;
    }

    public Ementa(String nome, String local) {
        this.nome = nome;
        this.local = local;
    }

    public String getNome() {
        return nome;
    }

    public String getLocal() {
        return local;
    }

    public List<Prato> getPratos() {
        return pratos;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public void setLocal(String local) {
        this.local = local;
    }

    public void setPratos(List<Prato> pratos) {
        this.pratos = pratos;
    }
    
}
