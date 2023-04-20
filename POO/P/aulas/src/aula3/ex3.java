import java.util.Scanner;
import utils.*;
import java.util.Random;

public class ex3 {
    public static void main(String[] args){
        Scanner input = new Scanner(System.in);
        int tentativas = userinput.random_num();

        System.out.print("parabens acertas-te !!!, com " + tentativas + " tentativas");

        System.out.println("Pretende continuar?Prima (S)im ");
        String resposta = input.nextLine();
        
        System.out.print(resposta);

        while (resposta.equals("S") || resposta.equals("Sim")){
            tentativas = userinput.random_num();

            System.out.print("parabens acertas-te !!!, com " + tentativas + " tentativas");
            System.out.print("Pretende continuar?Prima (S)im ");
            resposta = input.nextLine();
            
        }


        
    }
}
