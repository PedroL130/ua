package aula09;

import java.util.List;
import java.util.Scanner;


public class PlaneTester {
    public static void main(String[] args) {
        PlaneManager planeManager = new PlaneManager();
        Scanner scanner = new Scanner(System.in);
        int choice;

        do {
            System.out.println("\nPlane Fleet Menu:");
            System.out.println("1. Add a plane to the fleet");
            System.out.println("2. Remove a plane from the fleet");
            System.out.println("3. Search for a plane");
            System.out.println("4. Print summary of all planes in the fleet");
            System.out.println("5. Print list of all commercial planes in the fleet");
            System.out.println("6. Print list of all military planes in the fleet");
            System.out.println("7. Print the fastest plane in the fleet");
            System.out.println("0. Exit");

            System.out.print("Enter your choice: ");
            choice = scanner.nextInt();

            switch (choice) {
                case 1:
                    addPlane(planeManager, scanner);
                    break;
                case 2:
                    removePlane(planeManager, scanner);
                    break;
                case 3:
                    searchPlane(planeManager, scanner);
                    break;
                case 4:
                    printAllPlanes(planeManager);
                    break;
                case 5:
                    printCommercialPlanes(planeManager);
                    break;
                case 6:
                    printMilitaryPlanes(planeManager);
                    break;
                case 7:
                    printFastestPlane(planeManager);
                    break;
                case 0:
                    System.out.println("Exiting program...");
                    break;
                default:
                    System.out.println("Invalid choice. Please try again.");
                    break;
            }
        } while (choice != 0);

        scanner.close();
    }

    private static void removePlane(PlaneManager planeManager, Scanner scanner) {
        System.out.print("Enter the plane's id: ");
        String id = scanner.next();
        Plane plane = planeManager.searchPlane(id);
        if (plane == null) {
            System.out.println("Plane with id " + id + " does not exist.");
        } else {
            planeManager.removePlane(id);
        }

    }

    private static void searchPlane(PlaneManager planeManager, Scanner scanner) {
        System.out.print("Enter the plane's id: ");
        String id = scanner.next();
        Plane plane = planeManager.searchPlane(id);
        if (plane == null) {
            System.out.println("Plane with id " + id + " does not exist.");
        } else {
            System.out.println("Plane with id " + id + " is " + plane.toString());
        }
            
    }

    private static void printAllPlanes(PlaneManager planeManager) {
        System.out.println("All planes:");
        planeManager.printAllPlanes();
    }

    private static void printCommercialPlanes(PlaneManager planeManager) {
        System.out.println("Commercial planes:");
        List<Plane> planes= planeManager.getCommercialPlanes();
        if (planes==null)
            System.out.println("No commercial planes exist.");
        else 
            for (Plane plane : planes) {
                System.out.println(plane.toString());
            }
    }

    private static void printMilitaryPlanes(PlaneManager planeManager) {
        System.out.println("Military planes:");
        List<Plane> planes= planeManager.getMilitaryPlanes();
        if (planes==null)
            System.out.println("No military planes.");
        else
            for (Plane plane : planes) {
                System.out.println(plane.toString());
            }
        
    }

    private static void printFastestPlane(PlaneManager planeManager) {
        System.out.println("Fastest plane:");
        Plane fastestPlane = planeManager.getFastestPlane();
        if (fastestPlane == null) {
            System.out.println("There are no planes.");
        } else {
            fastestPlane.toString();
        }
    }

    private static void addPlane(PlaneManager manager, Scanner scanner) {
    
        System.out.println("\nAdicionar um novo avião:");
        System.out.print("Identificador: ");
        String id = scanner.nextLine();
    
        System.out.print("Fabricante: ");
        String manufacturer = scanner.nextLine();
    
        System.out.print("Modelo: ");
        String model = scanner.nextLine();
    
        System.out.print("Ano de produção: ");
        int year = scanner.nextInt();
    
        System.out.print("Número máximo de passageiros: ");
        int passengerCount = scanner.nextInt();
    
        System.out.print("Velocidade máxima: ");
        int maxSpeed = scanner.nextInt();
    
        System.out.println("Tipo de avião:");
        System.out.println("1. Comercial");
        System.out.println("2. Militar");
    
        int option = scanner.nextInt();
    
        if (option == 1) {
            System.out.print("Número de tripulantes: ");
            int crewCount = scanner.nextInt();
            CommercialPlane plane = new CommercialPlane(id, manufacturer, model, year, passengerCount, maxSpeed, crewCount);
            manager.addPlane(plane);
        } else if (option == 2) {
            System.out.print("Número de munições: ");
            int ammoCount = scanner.nextInt();
            MilitaryPlane plane = new MilitaryPlane(id, manufacturer, model, year, passengerCount, maxSpeed, ammoCount);
            manager.addPlane(plane);
        } else {
            System.out.println("Opção inválida. Avião não adicionado.");
        }
    
    }
    

    
}
