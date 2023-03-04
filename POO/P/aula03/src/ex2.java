import java.util.Scanner;
import utils.*;


public class ex2 {

    private static double taxa_0_to_5(double a1 ){
        
        Scanner input = new Scanner(System.in);

        

        while  ( !(0<a1 & a1<5)){
            System.out.print("insira uma taxa entre 0 e 5 ");
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
    
    public static void main(String[] args){
        double investido,taxa;
        
        Scanner input = new Scanner(System.in);
        System.out.println("insira o montante a investir");
        investido = input.nextDouble();
        investido = userinput.positivo(investido);
        
        investido = mult_1000(investido);
        System.out.println(investido);

        System.out.println("insira a taxa");
        taxa = input.nextDouble();
        taxa = taxa_0_to_5(taxa);

        System.out.println("insira os meses");
        int meses = input.nextInt();

        

        for (double i = meses; i > 0; i--){
            investido = investido + (investido*taxa);
            System.out.println("este mes tem este montante " + investido);
        }

        System.out.println("o montante final foi de " + investido);
        
    }
}
