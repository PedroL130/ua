package aula2;
import java.util.Scanner;

public class Ex8 {
    public static void main(String[] args){
        double ca,cb,h,ang;
        

        Scanner a = new Scanner(System.in);
        System.out.println("lado A ");
        ca = a.nextDouble();
        while (ca <0){
            System.out.print("n é positivo, insira um positivo");
            ca = a.nextDouble();
        }

        Scanner a1 = new Scanner(System.in);
        System.out.println("lado B ");
        cb = a1.nextDouble();
        while (cb <0){
            System.out.print("n é positivo, insira um positivo");
            cb = a.nextDouble();
        }

        

        h = Math.sqrt(Math.pow(ca,2)+Math.pow(cb,2));

        ang = Math.cos(ca/h);
        System.out.println("hipotenusa: " + h);
        System.out.println("angulo: " + h);
    }
}
