package aula2;
import java.util.Scanner;
import java.lang.Math;

public class Ex7 {
    public static void main(String[] args){
        double x1,x2,y1,y2,d;
        

        Scanner a = new Scanner(System.in);
        System.out.println("x1 ");
        x1 = a.nextDouble();

        Scanner a1 = new Scanner(System.in);
        System.out.println("y1 ");
        y1 = a1.nextDouble();

        Scanner a2 = new Scanner(System.in);
        System.out.println("x2 ");
        x2 = a2.nextDouble();
        
        Scanner a3 = new Scanner(System.in);
        System.out.println("y2 ");
        y2 = a3.nextDouble();

        d = Math.sqrt(Math.pow((x1+x2),2)+Math.pow((y1+y2),2));

        System.out.println("distancia: " + d);
    }
}
