package TesteBlibioteca;

import java.time.LocalDate;
import java.util.Scanner;

public class BookMain {

    public static void main(String[] args) {
        BookManager bookManager = new BookManager();
        Scanner scanner = new Scanner(System.in);
        int choice;

        do {
            System.out.println("\nMenu:");
            System.out.println("1. adicionar livro");
            System.out.println("2. apagar livro");
            System.out.println("3. procurar por nome");
            System.out.println("4. procurar por autor");
            System.out.println("5. procurar entre datas");
            System.out.println("6. procurar por ISBN");
            System.out.println("7. Listar livros ordenados por nome");
            System.out.println("8. Listar livros ordenados por autor");
            System.out.println("9. Listar livros ordenados por data de lancamento");
            System.out.println("0. fechar");

            System.out.print("Enter your choice: ");
            choice = scanner.nextInt();

            switch (choice) {
                case 1:
                    addBook(bookManager,scanner);
                    break;
                case 2:
                    removeBook(bookManager, scanner);
                    break;
                case 3:
                    System.out.print("insira o nome");
                    String name = scanner.nextLine();
                    bookManager.searchByname(name);
                    break;
                case 4:
                    System.out.print("insira o autor");
                    String autor = scanner.nextLine();
                    bookManager.searchByname(autor);
                    break;
                case 5:
                    System.out.println("data inicial (yyyy-mm-dd): ");
                    String dataInicial = scanner.nextLine();
                    LocalDate startDate = LocalDate.parse(dataInicial);
                
                    System.out.println("data inicial (yyyy-mm-dd): ");
                    String dataFinal = scanner.nextLine();
                    LocalDate endDate = LocalDate.parse(dataFinal);
                
                    bookManager.searchByDateInterval(startDate, endDate);
                    break;
                
                case 6:
                    System.out.print("insira o ISBN");
                    String isbn = scanner.nextLine();
                    bookManager.searchByname(isbn);
                    break;
                case 7:
                    bookManager.listAllBooks();
                    break;
                case 8:
                    bookManager.listBooksByName();
                case 9:
                    bookManager.listBooksByAuthor();
                case 10:
                    bookManager.listBooksByDate();
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

    private static void removeBook(BookManager bookManager, Scanner scanner) {
        System.out.println("\ndetalhes do livro:");
        System.out.print("Id: ");
        int id = scanner.nextInt();
    
        System.out.print("nome: ");
        String name = scanner.nextLine();
    
        System.out.print("autor: ");
        String autor = scanner.nextLine();
    
        System.out.print("editora: ");
        String editora = scanner.nextLine();
    
        System.out.print("isbn: ");
        String passengerCount = scanner.nextLine();
    
        System.out.print("data de lancamento: ");
        LocalDate maxSpeed =LocalDate.parse(scanner.nextLine());
    
        Book b = new Book(id, name, autor, editora, passengerCount, maxSpeed);
        bookManager.removeBook(b);

    }

    private static void addBook(BookManager bookManager, Scanner scanner) {
    
        System.out.println("\nAdicionar um novo livro:");
        System.out.print("Id: ");
        int id = scanner.nextInt();
    
        System.out.print("nome: ");
        String name = scanner.nextLine();
    
        System.out.print("autor: ");
        String autor = scanner.nextLine();
    
        System.out.print("editora: ");
        String editora = scanner.nextLine();
    
        System.out.print("isbn: ");
        String passengerCount = scanner.nextLine();
    
        System.out.print("data de lancamento: ");
        LocalDate maxSpeed =LocalDate.parse(scanner.nextLine());
    
        Book b = new Book(id, name, autor, editora, passengerCount, maxSpeed);
        bookManager.addBook(b);
    }
    
}
