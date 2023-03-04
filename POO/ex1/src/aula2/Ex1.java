package aula2;
import java.util.Scanner;

public class Ex1 {
    public static void main(String[] args){
        double km,mi ;
        Scanner input = new Scanner(System.in);
        System.out.println("enter km");
        
        km = input.nextDouble();
        mi = km / 1.609;
        String milhas = String.format("%.2f",mi);
        System.out.println(milhas);
        input.close();
    }
}
