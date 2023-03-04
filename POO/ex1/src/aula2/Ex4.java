package aula2;
import java.util.Scanner;

public class Ex4 {
    
    public static void main(String[] args){
        double investido,taxa,meses;
        

        Scanner y = new Scanner(System.in);
        System.out.println("quanto para investir ");
        investido = y.nextDouble();

        Scanner x1 = new Scanner(System.in);
        System.out.println("taxa ");
        taxa = x1.nextDouble();

        Scanner x2 = new Scanner(System.in);
        System.out.println("meses ");
        meses = x2.nextDouble();
        
        for (double i = meses; i > 0; i--){
            investido = investido + (investido*taxa);
        }

        System.out.println("o montante final é: " + investido);
       
    }

}
