package aula10.ex3;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Scanner;

public class charPosition {

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);  
        System.out.println("Insira uma frase");  
        String p = sc.nextLine();
        Map<Character,ArrayList<Integer>> charList = new HashMap<>();

        int i = 0;
        for (char a : p.toCharArray()){
            if (charList.containsKey(a))
                charList.get(a).add(i);
            else{
                charList.put(a, new ArrayList<Integer>());
                charList.get(a).add(i);
            }
            i++;
        }
        System.out.println(charList);
        sc.close();
    }
}
