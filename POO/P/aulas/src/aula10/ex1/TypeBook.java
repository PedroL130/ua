package aula10.ex1;

import java.util.HashMap;
import java.util.Map;


public class TypeBook {

    private String genero;
    private Map<String,Book> map;


    public TypeBook() {
        map = new HashMap<>();
    }


    public String getGenero() {
        return this.genero;
    }

    public void setGenero(String genero) {
        this.genero = genero;
    }

    public void addBook(String genero, Book b){
        map.put(genero, b);
    }

    public void removeBook(String genero, Book b){
        map.remove(genero, b);
    }

    
    public String toStringGenero() {
        return "TypeBook [genero=" + this.genero + "]";
    } 

    public String toStringBook() {
        return "TypeBook [genero=" + this.map.get(genero) + "]";
    } 

    public void printAllGenero() {
        int i = 0;
        for (String genero: map.keySet()){
            i++;
            System.out.print(genero + ", ");
            if (i==map.size())
                System.out.println();
        }
    }

    public void printJustBooks() {
        int i = 0;
        for (Book bel : map.values()){
            i++;
            System.out.print(bel+", ");
            if (i==map.size())
                System.out.println();
        }
    }

    public void printAllBooks() {
        
        for ( String genero : map.keySet()){
            System.out.println(genero + ": " + map.get(genero));
        }
    }


    @Override
    public String toString() {
        return "TypeBook [genero=" + genero + ", map=" + map + "]";
    } 

    
    
}
