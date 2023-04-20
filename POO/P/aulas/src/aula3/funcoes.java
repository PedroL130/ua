
package utils;
import java.util.Scanner;



public class funcoes {
    private static double primo(double a){
        int p = 0;
        for (int i=0;i<a+1;i++){
            if (a % i == 0) {
                p += 1;
            }
            
        }
        return p;
    }

    private static double positivo(double a1 ){
        
        Scanner input = new Scanner(System.in);
        while (a1 <0){
            System.out.print("n é positivo, insira um positivo ");
            a1 = input.nextDouble();
        }
        return a1;

    }

    private static double mult_1000(double a1 ){
        
        Scanner input = new Scanner(System.in);
        while (a1%1000 !=0){
            System.out.print("n é multiplo de 1000, insira outro ");
            a1 = input.nextDouble();
        }
        return a1;

    }

    private static double taxa_0_to_5(double a1 ){
        
        Scanner input = new Scanner(System.in);

        

        while  (!( 0<a1 & a1<5)){
            System.out.print("n é multiplo de 1000, insira outro ");
            a1 = input.nextDouble();
        }
        return a1;

    }



}
