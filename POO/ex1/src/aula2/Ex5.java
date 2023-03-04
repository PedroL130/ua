package aula2;
import java.util.Scanner;

import javax.print.attribute.standard.Sides;

public class Ex5 {


    
    public static void main(String[] args){
        double vmf,v2,v1,c1,c2;
        
        

        Scanner x = new Scanner(System.in);
        System.out.println("v1 ");
        v1 = x.nextDouble();
        while (v1 <0){
            System.out.print("n é positivo, insira um positivo");
            v1 = x.nextDouble();
        }

        Scanner x1 = new Scanner(System.in);
        System.out.println("c1 ");
        c1 = x1.nextDouble();
        while (c1 <0){
            System.out.print("n é positivo, insira um positivo");
            c1 = x.nextDouble();
        }

        Scanner x2 = new Scanner(System.in);
        System.out.println("v2 ");
        v2 = x2.nextDouble();
        while (v2 <0){
            System.out.print("n é positivo, insira um positivo");
            v2 = x.nextDouble();
        }
        
        Scanner x3 = new Scanner(System.in);
        System.out.println("c2 ");
        c2 = x3.nextDouble();
        while (c2 <0){
            System.out.print("n é positivo, insira um positivo");
            c2 = x.nextDouble();
        }

        vmf = (c1/v1 +c2/v2)/2;

        System.out.println("velocidade media final é: " + vmf);
    }

    public static void positive(int x ){ 
        while (x <0){
            System.out.print("n é positivo, insira um positivo");
            Scanner a = new Scanner(System.in);
            x = a.nextInt();
        }
    }
}
