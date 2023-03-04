package utils;
import java.util.Scanner;
import java.util.Random;

public class userinput {
    public static double primo(double a){
        int p = 0;
        for (int i=0;i<a+1;i++){
            if (a % i == 0) {
                p += 1;
            }
            
        }
        return p;
    }

    public static double positivo(double a1 ){
        
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

    public static int random_num(){
        
        Scanner input = new Scanner(System.in);

        Random gerador = new Random();
        int numero = gerador.nextInt(100);
        System.out.println(numero);

        
        System.out.println("insria um numero");
        int user_num = input.nextInt();
        

        int tentativas =1;

        while (user_num != numero){
            while (user_num > numero){
                System.out.print("insria um numero mais baixo ");
                user_num = input.nextInt();
                
                tentativas +=1;
            }
            while (user_num < numero){
                System.out.print("insria um numero mais alto ");
                user_num = input.nextInt();
                
                tentativas +=1;
            }
        }
        return tentativas;

        

    }

    public static int calcularDiasNoMes(int mes, int ano) {
        if (mes == 2) {
            if (ano % 4 == 0 && (ano % 100 != 0 || ano % 400 == 0)) {
                return 29;
            } else {
                return 28;
            }
        } else if (mes == 4 || mes == 6 || mes == 9 || mes == 11) {
            return 30;
        } else {
            return 31;
        }
    }
}
