package aula10.ex2;
import aula10.ex1.*;

public class test {
    public static void main(String[] args) {
        Book b1 =new Book("1","2",2);
        Book b2 =new Book("1.2","2.2",2);
        Book b3 =new Book("1.3","2.3",2);
        Book b4 =new Book("1.4","2.4",2);
        Book b5 =new Book("1.5","2.5",2);

        TypeBookV2 t1 = new TypeBookV2();
        t1.addBook("drama", b1);
        t1.addBook("drama", b5);
        t1.addBook("drama", b2);
        t1.addBook("romance", b3);
        t1.addBook("comedia", b2);
        t1.addBook("terror", b4);

        t1.printAllGenero();
        t1.printJustBooks();

        t1.printAllBooks();
        t1.randomBook("drama");

    }
}
