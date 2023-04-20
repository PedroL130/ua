package IParkManager;

public class Plant{
    private String cor, sponsor="Nao tem",palmTreeHabitat;
    private String planta;
    private boolean flor, evergreen;
    private int id=0,idade;
    private double altura;
    

    public Plant(String planta, int idade, double altura){
        this.planta = planta;
        this.altura = altura;
        this.idade = idade;
        this.id++;

    }

    
    public Plant(String planta, int idade, double altura,String sponsor){
        this.planta = planta;
        this.altura = altura;
        this.idade = idade;
        this.id++;
        this.sponsor;

    }

    public String getPlant(){
        return this.planta;
    }

    public String getPatrocinador(){
        return this.sponsor;
    }

    public int getAltura(){
        return this.altura;
    }

    public int getIdade(){
        return this.idade;
    }

    public int getId(){
        return this.id;
    }

    public void setPlanta(String x){
        this.planta=x;
    }



    public void setSponsor(String x){
        this.sponsor=x;
    }

    public void setIdade(int x){
        this.idade=x;
    }

    public void setAltura(double x){
        this.altura=x;
    }

    public void Tree(Boolean x){
        this.evergreen=x;
    }

    public void Shrub(Boolean x){
        this.flor=x;
    }

    public String Shrub(Boolean x,String cor){
        this.flor=x;
        this.cor=cor;
    }


    public void PalmTree(String x){
        this.palmTreeHabitat=x;
    }

    




}

