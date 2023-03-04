package aula2;
import java.util.Scanner;

public class Ex2 {
    public static void main(String[] args){
        double c,f;
        Scanner tc = new Scanner(System.in);
        System.out.println("a temp em c é: ");
        c = tc.nextDouble();
        f = 1.8 * c + 32;
        System.out.println("a temp em f é: " + f);
    }
}
