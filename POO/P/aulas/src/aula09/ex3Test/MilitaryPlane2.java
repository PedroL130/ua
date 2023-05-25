package aula09.ex3Test;

public class MilitaryPlane2 extends Plane2 {
    private int NMunicoes;

    public MilitaryPlane2(String Id, String Fabricante, String Modelo, int AnoProducao, int NMaxPassageiros, int VMax,
            int nMunicoes) {
        super(Id, Fabricante, Modelo, AnoProducao, NMaxPassageiros, VMax);
        this.NMunicoes = nMunicoes;
    }


    public int getNMunicoes() {
        return this.NMunicoes;
    }

    public void setNMunicoes(int NMunicoes) {
        this.NMunicoes = NMunicoes;
    }
    @Override
    public String getType(){
        return "Miletar";
    }


    @Override
    public String toString() {
        return super.toString()+"{" +
            " NMunicoes='" + getNMunicoes() + "'" +
            "}";
    }


    
}
