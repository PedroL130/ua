package aula12.ex1;

import java.io.File;
import java.util.HashSet;
import java.util.Scanner;
import java.util.Set;

public class wordsDiferent {
    public static void main(String[] args) {
        //set =  palavras diferentes
        Set<String> words = new HashSet<>(); 
        int i = 0;            
        
        try {
            Scanner scanner = new Scanner(new File("src/aula12/movies.txt"), "UTF-8");
            

            while(scanner.hasNext()){
                String palavra = scanner.next();
                words.add(palavra);
                i++;
            }

            System.out.println("Número Total de Palavras: "+ i);
            System.out.println("Número de Diferentes Palavras: "+ words.size());
        } catch (Exception e) {
            // TODO: handle exception
            System.out.println("file not found");
        }
        
    }
}
