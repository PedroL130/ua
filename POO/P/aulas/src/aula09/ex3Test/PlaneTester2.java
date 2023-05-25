package aula09.ex3Test;

import java.util.Scanner;

public class PlaneTester2 {
    public static void main(String[] args) {
        PlaneManager2 planeList = new PlaneManager2();
        Scanner sc = new Scanner(System.in);
        int option ;

        do{
            System.out.println("\nPlane Fleet Menu:");
            System.out.println("1. Add a plane to the fleet");
            System.out.println("2. Remove a plane from the fleet");
            System.out.println("3. Search for a plane");
            System.out.println("4. Print summary of all planes in the fleet");
            System.out.println("5. Print list of all commercial planes in the fleet");
            System.out.println("6. Print list of all military planes in the fleet");
            System.out.println("7. Print the fastest plane in the fleet");
            System.out.println("0. Exit");

            System.out.println("option");
            option = sc.nextInt();

            switch (option) {
                case 1:
                    System.out.println("Enter plane ID: ");
                    String id = sc.next();
                    System.out.println("Enter plane model: ");
                    String manufacturer = sc.next();
                    System.out.println("Enter plane fab: ");
                    String model = sc.next();
                    System.out.println("Enter plane capacidademax: ");
                    
                    System.out.println("Enter plane ano: ");
                    int year = sc.nextInt();
                    System.out.println("Enter plane vmax: ");
                    int vmax = sc.nextInt();
                    Plane2 plane = new Plane2(model, manufacturer, model, year, vmax, vmax);
                    planeList.addPlane(plane);

                case 2:
                    System.out.println("Enter plane ID: ");
                    id = sc.next();
                    planeList.removePlane(id);
                    break;
                case 3:
                    System.out.println("Enter plane ID: ");
                    id = sc.next();
                    planeList.searchPlane(id);
                    break;
                case 4:
                    planeList.printAllPlanes();
                    break;
                case 5:
                    planeList.getCommercialPlanes();
                    break;
                default:
                    break;

            }

        }while(option!=0);
        sc.close();


    }
}
