package aula2;
import java.util.Scanner;
public class Ex9 {
    public static void main(String[] args) {
        double n;
        Scanner a = new Scanner(System.in);
        System.out.print("Digite um valor positivo: ");
        n = a.nextInt();

        for (double i = n; i >= 0; i--) {
            if (i % 10 == 0) {
                System.out.println(i);
            } else {
                System.out.print(i + ", ");
            }
        }
        a.close();
    }
    
}
