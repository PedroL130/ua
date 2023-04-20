import java.util.Scanner;

public class Main {

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        ParkManager pManager = new ParkManager("Serralves");

        int choice = 0;
        do {
            System.out.println("Choose an option:");
            System.out.println("1. Add plant");
            System.out.println("2. Remove plant");
            System.out.println("3. Search for species");
            System.out.println("4. Sponsor a plant");
            System.out.println("5. View all plants");
            System.out.println("6. Summary of species");
            System.out.println("7. Exit");

            choice = scanner.nextInt();

            switch (choice) {
                case 1:
		            // adicionar planta
                case 2:
                    // remover planta
                case 3:
                    // procurar planta
                case 4:
                    // patrocinar planta
                case 5:
                    // imprimir a informação de todas as plantas
                case 6:
                    // imprimir resumo com a informação relativa a todas
                    // especies
                case 7:
                    System.out.println("Goodbye!");
                    break;
                default:
                    // imprimir mensagem de erro
            }

        } while (choice != 7);
    }
}
