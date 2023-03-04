package aula2;
import java.util.ArrayList;
import java.util.List;
import java.sql.Array;
import java.util.Scanner;

public class Ex10 {
    public static void main(String[] args){
        double valor, v1, minimo, maximo,media,total,nl;
        

        List<Double> n = new ArrayList<>();

        Scanner a = new Scanner(System.in);
        System.out.println("Digite um número: ");
        valor = a.nextDouble();

        n.add(valor);
        v1=0;

        while (v1 != n.get(0)){
            System.out.println("Digite um número: ");
            v1 = a.nextDouble();
            n.add(v1);
        }
        System.out.print(n);
        nl=0;
        maximo=n.get(0);
        minimo=n.get(0);
        total=0;
        for (double i : n){
            nl +=1;
            total +=i; 
            if (maximo<i){
                maximo =i;
            }if (minimo>i){
                minimo =i;
            }


        }
        media = total /nl;

        System.out.printf("Total de números lidos: %f%n", nl);
        System.out.printf("Valor mínimo: %.2f%n", minimo);
        System.out.printf("Valor máximo: %.2f%n", maximo);
        System.out.printf("Média: %.2f%n", media);

    }
    
}
