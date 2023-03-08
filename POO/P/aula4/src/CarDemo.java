import java.util.Scanner;

class Car {
    public String make;
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
        //TODO: acumular distância percorrida
        kms += distance;
    }

}

public class CarDemo {

    static Scanner sc = new Scanner(System.in);

    static int registerCars(Car[] cars) {
        // TODO: pede dados dos carros ao utilizador e acrescenta ao vetor
        
       
        // registo de carros termina quando o utilizador inserir uma linha vazia 

        // devolve número de carros registados
        //ver enunciado

        System.out.print("Insira dados do carro (marca modelo ano quilómetros): ");

        int i = 0;
        while (sc.hasNext()) {
            String[] car = sc.next().split(" ");
            cars[i] = new Car(car[0], car[1], Integer.parseInt(car[2]), Integer.parseInt(car[3]));
            i++;
        }
        return i;
    }

    static void registerTrips(Car[] cars, int numCars) {
        // TODO: pede dados das viagens ao utilizador e atualiza informação do carro
        // registo de viagens termina quando o utilizador inserir uma linha vazia 
        System.out.print("Registe uma viagem no formato \"carro:distância\": ");
        while (sc.hasNext()) {
            String[] trip = sc.next().split(":");
            int distance = 0;
            try {
                distance = Integer.parseInt(trip[1]);
            } catch (Exception NumberFormatException) {
                System.out.println("Invalid value");
            }

            for (int i =0;i<numCars;i++){
                String car1 = cars[i].make + cars[i].model + cars[i].year;
                if ( car1  == trip[0] ){
                    cars[i].drive(distance);
                }
            }
            
            
        }
    }


    static void listCars(Car[] cars) {
        System.out.println("\nCarros registados: ");
        // TODO: lista todos os carros registados
        // Exemplo de resultado
        // Carros registados: 
        // Toyota Camry, 2010, kms: 234346
        // Renault Megane Sport Tourer, 2015, kms: 32536
        for (Car car : cars) {
            System.out.println(car.make + ", " + car.model + ", " + car.year + ", " + car.kms);
        }
        System.out.println("\n");
    }

    public static void main(String[] args) {

        Car[] cars = new Car[10];

        int numCars = registerCars(cars);

        if (numCars>0) {
            listCars(cars);
            registerTrips(cars, numCars);
            listCars(cars);
        }

        sc.close();

    }
}