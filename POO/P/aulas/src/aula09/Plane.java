package aula09;


public class Plane {
    private String id,manufacturer,model;
    private int year,maxNumOfPassengers;
    private double maxSpeed;



    public Plane(String id, String manufacturer, String model, int year, int maxNumOfPassengers, Double maxSpeed) {
        this.id = id;
        this.manufacturer = manufacturer;
        this.model = model;
        this.year = year;
        this.maxNumOfPassengers = maxNumOfPassengers;
        this.maxSpeed = maxSpeed;
    }


    public String getId() {
        return this.id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getManufacturer() {
        return this.manufacturer;
    }

    public void setManufacturer(String manufacturer) {
        this.manufacturer = manufacturer;
    }

    public String getModel() {
        return this.model;
    }

    public void setModel(String model) {
        this.model = model;
    }

    public int getYear() {
        return this.year;
    }

    public void setYear(int year) {
        this.year = year;
    }

    public int getMaxNumOfPassengers() {
        return this.maxNumOfPassengers;
    }

    public void setMaxNumOfPassengers(int maxNumOfPassengers) {
        this.maxNumOfPassengers = maxNumOfPassengers;
    }

    public double getMaxSpeed() {
        return this.maxSpeed;
    }

    public void setMaxSpeed(double maxSpeed) {
        this.maxSpeed = maxSpeed;
    }


    @Override
    public String toString() {
        return "Plane [id=" + id + ", manufacturer=" + manufacturer + ", model=" + model + ", year=" + year
                + ", maxNumOfPassengers=" + maxNumOfPassengers + ", maxSpeed=" + maxSpeed + "]";
    }

    
    
}
