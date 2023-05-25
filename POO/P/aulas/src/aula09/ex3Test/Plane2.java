package aula09.ex3Test;

public class Plane2 {
    private String Id,Fabricante,Modelo;
    private int AnoProducao,NMaxPassageiros,VMax;


    public Plane2(String Id, String Fabricante, String Modelo, int AnoProducao, int NMaxPassageiros, int VMax) {
        this.Id = Id;
        this.Fabricante = Fabricante;
        this.Modelo = Modelo;
        this.AnoProducao = AnoProducao;
        this.NMaxPassageiros = NMaxPassageiros;
        this.VMax = VMax;
    }


    public String getId() {
        return this.Id;
    }

    public void setId(String Id) {
        this.Id = Id;
    }

    public String getFabricante() {
        return this.Fabricante;
    }

    public void setFabricante(String Fabricante) {
        this.Fabricante = Fabricante;
    }

    public String getModelo() {
        return this.Modelo;
    }

    public void setModelo(String Modelo) {
        this.Modelo = Modelo;
    }

    public int getAnoProducao() {
        return this.AnoProducao;
    }

    public void setAnoProducao(int AnoProducao) {
        this.AnoProducao = AnoProducao;
    }

    public int getNMaxPassageiros() {
        return this.NMaxPassageiros;
    }

    public void setNMaxPassageiros(int NMaxPassageiros) {
        this.NMaxPassageiros = NMaxPassageiros;
    }

    public int getVMax() {
        return this.VMax;
    }

    public void setVMax(int VMax) {
        this.VMax = VMax;
    }

    public String getType(){
        return "Normal";
    }


    @Override
    public String toString() {
        return "{" +
            " Id='" + getId() + "'" +
            ", Fabricante='" + getFabricante() + "'" +
            ", Modelo='" + getModelo() + "'" +
            ", AnoProducao='" + getAnoProducao() + "'" +
            ", NMaxPassageiros='" + getNMaxPassageiros() + "'" +
            ", VMax='" + getVMax() + "'" +
            "}";
    }


}
