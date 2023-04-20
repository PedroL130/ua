package aula09.ex1;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

import aula06.pessoa.*;
import aula5.DateYMD;

public class ALDemo {
    public static void main(String[] args) {
        ArrayList<Integer> c1 = new ArrayList<>();
        for (int i = 10; i <= 100; i += 10)
            c1.add(i);
        System.out.println("Size: " + c1.size());
        for (int i = 0; i < c1.size(); i++)
            System.out.println("Elemento: " + c1.get(i));
        ArrayList<String> c2 = new ArrayList<>();
        c2.add("Vento");
        c2.add("Calor");
        c2.add("Frio");
        c2.add("Chuva");
        System.out.println(c2);
        Collections.sort(c2);
        System.out.println(c2);
        c2.remove("Frio");
        c2.remove(0);
        System.out.println(c2);

        Set<Pessoa> c3 = new HashSet<>();
        
        Aluno al = new Aluno("Andreia Melo", 9855678,new DateYMD(18, 7, 1990), new DateYMD(1, 9, 2018));
        Aluno al2 = new Aluno("Andreia Melo", 9855678,new DateYMD(18, 7, 1990), new DateYMD(1, 9, 2018));
        Professor p1 = new Professor("Jorge Almeida", 3467225, new DateYMD(13, 3, 1967),"Associado", "Informática");
        Bolseiro bls = new Bolseiro("Igor Santos", 8976543, new DateYMD(11, 5, 1985), p1,900);
        c3.add(p1);
        c3.add(al);
        c3.add(bls);
        c3.add(al);
        System.out.println(c3);
        
 
    }
}