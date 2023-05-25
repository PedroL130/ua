package TesteBlibioteca;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileWriter;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class BookManager implements BookManagerInterface {

    private ArrayList<Book> Bib;

    public BookManager() {
        Bib = new ArrayList<>();
    }

    @Override
    public void load(String filePath) {
        try {
            int id = 1;
            Scanner input = new Scanner(new File(filePath), "UTF-8");
            while (input.hasNextLine()) {
                String[] book = input.nextLine().split("\t");

                String name = book[0];
                String author = book[1];
                String editora = book[2];
                String isbn = book[3];
                LocalDate releaseDate = LocalDate.parse(book[3]);

                Book book2 = new Book(id, name, author, editora, isbn, releaseDate);
                Bib.add(book2);
                id++;

            }
        } catch (FileNotFoundException e) {
            System.out.println("File invalido");
        }
    }

    @Override
    public void save(String filePath) {
        try (FileWriter writer = new FileWriter(filePath)) {
            for (Book b : Bib) {
                writer.write(b.toString() + "\n");

            }
        } catch (Exception e) {
            // TODO: handle exception
            System.out.println("problema de file");
        }
    }

    @Override
    public boolean validateISBN(String isbn) {
        if (isbn.contains("-") && isbn.length() == 13) {
            return true;
        }
        if (!(isbn.contains("-")) && isbn.length() == 10) {
            return true;
        }
        return false;
    }

    @Override
    public boolean addBook(Book book) {
        if (book.getIsbn() == null) {
            Bib.add(book);
            System.out.println("Livro adicionado com sucesso");
            return true;
        } else {
            System.out.println("Livro ja existe");
            return false;
        }
    }

    @Override
    public boolean removeBook(Book book) {
        for (Book b : Bib) {
            if (b.getIsbn().equals(book.getIsbn())) {
                return Bib.remove(book);
            }
        }
        System.out.println("Livro nao existe");
        return false;
    }

    @Override
    public Book searchByname(String name) {
        for (Book b : Bib) {
            if (b.getName().equals(name)) {
                return b;
            }
        }
        System.out.println("Livro nao existe");
        return null;
    }

    @Override
    public List<Book> searchByAuthor(String author) {
        List<Book> BookByAuthor = new ArrayList<>();
        for (Book b : Bib) {
            if (b.getAuthor().equals(author)) {
                BookByAuthor.add(b);
            }
        }

        return BookByAuthor;
    }

    @Override
    public Book searchByISBN(String isbn) {
        for (Book b : Bib) {
            if (b.getIsbn().equals(isbn)) {
                return b;
            }
        }
        System.out.println("Livro nao existe");
        return null;
    }

    @Override
    public void listAllBooks() {
        for (Book b : Bib) {
            System.out.println(b);
        }
    }

    @Override
    public void listBooksByName() {
        Bib.sort((a, b) -> a.getName().compareToIgnoreCase(b.getName()));
        listAllBooks();
    }

    @Override
    public void listBooksByAuthor() {
        Bib.sort((a, b) -> a.getAuthor().compareToIgnoreCase(b.getAuthor()));
        listAllBooks();
    }

    @Override
    public List<Book> searchByDateInterval(LocalDate fromDate, LocalDate toDate) {
        List<Book> booksByDateInterval = new ArrayList<>();
        for (Book b : Bib) {
            if (b.getReleaseDate().isAfter(fromDate) && b.getReleaseDate().isBefore(toDate)) {
                booksByDateInterval.add(b);
            }
        }
        return booksByDateInterval;
    }

    @Override
    public void listBooksByDate() {
        Bib.sort((a, b) -> a.getReleaseDate().compareTo(b.getReleaseDate()));
        listAllBooks();
    }

}
