package aula2;
import java.util.Scanner;   
public class Ex6 {
    public static void main(String[] args){
        int s,h,m;
        

        Scanner x = new Scanner(System.in);
        System.out.println("s ");
        s = x.nextInt();

        h=s/3600;
        m=(s%3600)/60;
        s=(s%3600)%60;

        String tempo = String.format("{%d}:{%d}:{%d}",h,m,s);
        System.out.println(tempo);
    }
}
