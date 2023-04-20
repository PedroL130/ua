import java.util.Scanner;


class Car {
    public String  make;
    public String model;
    public int year;
    public int kms;

    public Car(String make, String model, int year, int kms) {

        this.make = make;
        this.model = model;
        this.year = year;
        this.kms = kms;
    }

    public void drive(int distance) {
        kms += distance;
        this.kms=kms;
    }
    
    public String getMake(){
        return make;
    }

    public String getModel(){
        return model;
    }

    public int getYear(){
        return year;
    }

    public int getKms(){
        return kms;
    }

}



public class SimpleCarDemo {

    static Scanner sc = new Scanner(System.in);

    static void listCars(Car[] cars) {
        for (Car car : cars) {
            System.out.println(car.getMake()+ ", " + car.getModel() + ", " + car.getYear() + ", " + car.getKms());
        }
       
    }

    public static void main(String[] args) {

        Car[] cars =  new Car[3]; 
        cars[0] = new Car("Renault", "Megane Sport Tourer", 2015, 35356);
        cars[1] = new Car("Toyota", "Camry", 2010, 32456);
        cars[2] = new Car("Mercedes", "Vito", 2008, 273891);

        listCars(cars);

        

        // Adicionar 10 viagens geradas aleatoriamente
        for (int i=0; i<10; i++) {
            int j = (int)Math.round(Math.random()*2); // escolhe um dos 3 carros
            int km = (int)Math.round(Math.random()*1000); // viagem até 1000 kms
            System.out.printf("Carro %d viajou %d quilómetros.\n", j, km);
            
            
            cars[j].drive(km);     
        }

        listCars(cars);

        sc.close();

    }
}