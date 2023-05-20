package aula11.ex1;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Scanner;


public class WordsOfMajor {
    public static void main(String[] args) throws IOException {
        Scanner input = new Scanner(new File("src/aula11/major.txt"), "UTF-8" );
        ArrayList<String> words = new ArrayList<>();
        input.useDelimiter("[\\t\\n.,:'‘’;?!-*{}=+&/()\\[\\]”“\"\\\\ ]+");
        HashMap<String,Map> map = new HashMap<>();
        
        
        
        while (input.hasNext()) {
            String word = input.next();

            if (word.length()>2){
                words.add(word);
            }               
        }

        for (int i=0 ; i<words.size()-1;i++){
            if (!(map.containsKey(words.get(i)))){
                HashMap<String,Integer> map1 = new HashMap<>();
                map1.put(words.get(i+1), 1);
                map.put(words.get(i), map1);
                
            }else{
                // verificar se a palavra anterior e a palavra seguinte formam um par mais do que uma vez 
                if (map.get(words.get(i)).containsKey(words.get(i+1))){
                    //obter o numero de vezes que o par ocorre
                    int x = (int) map.get(words.get(i)).get(words.get(i+1));
                    x++;
                    // atualizar o numero de vezes que o par ocorre
                    map.get(words.get(i)).put(words.get(i+1), x);
                }else{
                    map.get(words.get(i)).put(words.get(i+1), 1);
                }
               
                        
                
            }
        }



        System.out.println(map);
      
    }
}
