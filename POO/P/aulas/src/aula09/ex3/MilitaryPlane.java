package aula09.ex3;

public class MilitaryPlane extends Plane {
    private int numMissiles;

    public MilitaryPlane(String id, String manufacturer, String model, int year, int maxPassengers, double maxSpeed, int numMissiles) {
        super(id, manufacturer, model, year, maxPassengers, maxSpeed);
        this.numMissiles = numMissiles;
    }


    public int getNumMissiles() {
        return this.numMissiles;
    }

    public void setNumMissiles(int numMissiles) {
        this.numMissiles = numMissiles;
    }

    @Override
    public String getModel() {
        return "Militar";
    }


    @Override
    public String toString() {
        return super.toString()+"MilitaryPlane [numMissiles=" + numMissiles + "]";
    }

    
}