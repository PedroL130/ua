package aula10.ex2;
import aula10.ex1.*;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Scanner;


public class TypeBookV2 {

    private String genero;
    private Map<String,ArrayList<Book>> map;
    private static Scanner sc = new Scanner(System.in);


    public TypeBookV2() {
        map = new HashMap<>();
    }

    public String getGenero() {
        return this.genero;
    }

    public void setGenero(String genero) {
        this.genero = genero;
    }

    public void addGenero(String genero){
        map.put(genero, new ArrayList<>());
    }

    public void addBook(String genero, Book b){
        if (map.containsKey(genero))
            map.get(genero).add(b);
        else{
            System.out.println("Esse genero de livro ainda não existe!");
            System.out.println("Pretende adicionar? Sim/Não");
            String option = sc.next().toLowerCase();
            if (option.equals("sim") || option.equals("s"))
                addGenero(genero);
                map.get(genero).add(b);
        }
            
    }

    public void removeGenero(String genero){
        map.remove(genero);
    }

    public void removeBook(String genero, Book b){
        map.get(genero).remove(b);
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
        if (map != null)
            for (String a : map.keySet() ){
                for (Book b : map.get(a)){
                    System.out.print(b + ", ");
                }
                i++;
                if (i==map.size())
                    System.out.println();
            }
        
    }

    public void printAllBooks() {
        
        for ( String genero : map.keySet()){
            System.out.println(genero + ": " + map.get(genero));
        }
    }

    public void randomBook(String genero){
        int i = map.get(genero).size();
        int rd = (int)(Math.random() * i);
        int index=0;
        for (Book b : map.get(genero)){
            if (rd == index)
               System.out.println(genero + ": " + b); 
            index++;
        }
        
    }


    @Override
    public String toString() {
        return "TypeBook [genero=" + genero + ", map=" + map + "]";
    } 

    
    
}
