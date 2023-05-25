package aula09.ex3Test;

public class CommercialPlane2 extends Plane2{

    private int NTripulantes;

    public CommercialPlane2(String Id, String Fabricante, String Modelo, int AnoProducao, int NMaxPassageiros, int VMax,
            int nTripulantes) {
        super(Id, Fabricante, Modelo, AnoProducao, NMaxPassageiros, VMax);
        this.NTripulantes = nTripulantes;
    }


    public int getNTripulantes() {
        return this.NTripulantes;
    }

    public void setNTripulantes(int NTripulantes) {
        this.NTripulantes = NTripulantes;
    }

    @Override
    public String getType(){
        return "Comercial";
    }


    @Override
    public String toString() {
        return super.toString()+"{" +
            " NTripulantes='" + getNTripulantes() + "'" +
            "}";
    }


    
    
}
