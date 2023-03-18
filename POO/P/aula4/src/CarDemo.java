import java.util.ArrayList;
import java.util.Scanner;


class Car {
    private String make;
    private String model;
    private int year;
    private int kms;

    public Car(String make, String model, int year, int kms) {

        this.make = make;
        this.model = model;
        this.year = year;
        this.kms = kms;
        
    }

    

    public void carDrive(int distance) {
        // TODO: acumular distância percorrida
        kms += distance;
        this.kms = kms;
    }

    public String getMake() {
        return make;
    }

    public String getModel() {
        return model;
    }

    public int getYear() {
        return year;
    }

    public int getKms() {
        return kms;
    }

}

public class CarDemo {

    private static Scanner sc = new Scanner(System.in);

    static int registerCars(Car[] cars) {
        // TODO: pede dados dos carros ao utilizador e acrescenta ao vetor

        // registo de carros termina quando o utilizador inserir uma linha vazia

        // devolve número de carros registados
        // ver enunciado

        int i = 0;
        while (true) {
            System.out.print("Insira dados do carro (marca modelo ano quilómetros): ");

            String car1 = sc.nextLine();

            String[] car = car1.split(" ");

            if (car[0].equals("")) {
                break;
            }

            if(car.length==4 ){
                String c0 = car[0];
                String c1 = car[1];
                int c2 = Integer.parseInt(car[2]);
                int c3 = Integer.parseInt(car[3]);
                cars[i] = new Car(c0, c1, c2, c3);
            }
            if (car.length<4 ){
                System.out.println("Invalid value");
            }
            
            
            
            

            
            i++;

        }
        return i;
    }


    static void registerTrips(Car[] cars, int numCars) {
        // TODO: pede dados das viagens ao utilizador e atualiza informação do carro
        // registo de viagens termina quando o utilizador inserir uma linha vazia
        System.out.print("Registe uma viagem no formato \"carro:distância\": ");
        int i=0;
        while (i<numCars) {
            String[] trip = sc.next().split(":");
            int distance = 0;
            try {
                distance = Integer.parseInt(trip[1]);
            } catch (Exception NumberFormatException) {
                System.out.println("Invalid value");
            }

            String car1 = cars[i].getMake();

            if ( car1.equals(trip[0])) {
                cars[i].carDrive(distance);
            }
            System.out.print(numCars);

            i++;

        }
    }

    static void listCars(Car[] cars, int numCars) {
        System.out.println("\nCarros registados: ");
        // TODO: lista todos os carros registados
        // Exemplo de resultado
        // Carros registados:
        // Toyota Camry, 2010, kms: 234346
        // Renault Megane Sport Tourer, 2015, kms: 32536
        int i=0;
        while(i<numCars){
           
            System.out.println(cars[i].getMake() + ", " + cars[i].getModel() + ", " + cars[i].getYear() + ", " + cars[i].getKms());
            
            i++; 
        }
        
        System.out.println("\n");
    }

    public static void main(String[] args) {

        Car[] cars = new Car[10];

        int numCars = registerCars(cars);

        if (numCars > 0) {
            listCars(cars,numCars);
            registerTrips(cars, numCars);
            listCars(cars,numCars);
        }

        sc.close();

    }
}