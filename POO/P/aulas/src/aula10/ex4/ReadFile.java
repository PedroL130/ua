package aula10.ex4;

import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Scanner;
import java.util.Set;

public class ReadFile {

    public static void main(String[] args) throws IOException {
        Scanner input = new Scanner(new FileReader("C:/ua/POO/P/aulas/src/aula10/ex4/words1.txt"));
        Set<String> words = new HashSet<>();
        while (input.hasNext()) {
            String word = input.next();
            if (word.length() > 2)
                words.add(word);
        }
        System.out.println("palavras terminadas com S ");
        for (String a : words) {
            if (a.endsWith("s"))
                System.out.println(a);
        }

        List<String> cleanWords = new ArrayList<>();
        for (String word : words) {
            if (word.matches("[a-zA-Z]+")) {
                cleanWords.add(word);
            }
        }
        System.out.println(cleanWords);
    }

}
