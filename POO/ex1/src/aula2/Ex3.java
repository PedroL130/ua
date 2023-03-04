package aula2;
import java.util.Scanner;

public class Ex3 {
    public static void main(String[] args){
        double agua_kg,ti,tf,q;
        Scanner agua = new Scanner(System.in);
        System.out.println("enter agua em kg ");
        agua_kg = agua.nextDouble();
        Scanner ti1 = new Scanner(System.in);
        System.out.println("t inicial ");
        ti = ti1.nextDouble();
        Scanner tf1 = new Scanner(System.in);
        System.out.println("t final ");
        tf = tf1.nextDouble();
        q = agua_kg * (tf - ti) * 4184;
        System.out.println("os joules necessarios foram: " + q);
        agua.close();
        ti1.close();
        tf1.close();
    }
}
