package aula12.ex2;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Scanner;
import java.util.Set;
import java.util.TreeMap;
import java.util.Map.Entry;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.nio.charset.StandardCharsets;

public class FileReader_ex2 {

    public static void main(String[] args) {
        //set =  palavras diferentes
        Set<String> words1 = new HashSet<>();
        Map<Character,Map<String,Integer>> map = new TreeMap<>(); 

        /* String test = "oal jnhdbhbs??F?WFWE?w";
        String[] test1 = test.split("[? ]+");
        System.out.println(test1[2]); */
               
        
        try {
            Scanner scanner = new Scanner(new File("src/aula12/ex2/A_cidade_e_as_serras.txt"), "UTF-8");
            

            while(scanner.hasNext()){
                Map<String,Integer> numVar = new HashMap<>();  
                String palavra = scanner.next();
                palavra = palavra.toLowerCase();
                if (palavra.length()>2 && palavra.matches("[a-zA-Z]+")){
                    words1.add(palavra.toLowerCase());
                    if (map.containsKey(palavra.charAt(0))){
                        numVar = map.get(palavra.charAt(0));
                        int num = numVar.getOrDefault(palavra,0);
                        numVar.put(palavra,num+1);
                        map.put(palavra.charAt(0),numVar);

                    }else{
                        numVar.put(palavra, 1);
                        map.put(palavra.charAt(0), numVar);
                    }
                }              
            }
            scanner.close();



            System.out.println(map.toString());
        } catch (Exception e) {
            // TODO: handle exception
            System.out.println("file not found");
        } 

        try {
            FileWriter writter = new FileWriter("src/aula12/ex2/contagem.txt", StandardCharsets.UTF_8);
            for (Entry<Character, Map<String, Integer>> entry : map.entrySet()) {
                Character word = entry.getKey();
                Map<String, Integer> count = entry.getValue();
                writter.write(word + ": " + count);
                
            }
            writter.close();
            
            
        } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }


        
    }

}
