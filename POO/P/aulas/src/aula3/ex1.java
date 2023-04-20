import java.util.Scanner;




public class ex1 {
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
    




    public static void main(String[] args){
        double n;
        int soma;
        Scanner input = new Scanner(System.in);
        System.out.println("insira um numero");
        n = input.nextDouble();
        n = positivo(n);
        soma=0;

        for (int i=0;i<n+1;i++){
            if (primo(i) == 2){
                soma += i;
            }

        }


        double primos = primo(n);
        System.out.println(soma);

        




    }

    


    
}
