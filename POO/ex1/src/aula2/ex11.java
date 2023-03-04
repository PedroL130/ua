package aula2;
import java.util.Scanner;

public class ex11 {
    public static void isnumber(String x){
        for (int i = 0; i < x.length(); i++) {
            if (!Character.isDigit(x.charAt(i))) {
                System.out.print("n é numero, insira um numero");
                Scanner x1 = new Scanner(System.in);
                
            }
        }
    }
    
}
