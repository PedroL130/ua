package aula2;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class ex10_1 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        List<Double> numeros = new ArrayList<>();
        System.out.print("Digite um número: ");
        double valor = sc.nextDouble();
        numeros.add(valor);
        valor = 0;
        while (valor != numeros.get(0)) {
            System.out.print("Digite um número: ");
            valor = sc.nextDouble();
            numeros.add(valor);
        }

        numeros.remove(numeros.size() - 1);
        int n = numeros.size();
        double total = 0;
        double minimo = Double.MAX_VALUE;
        double maximo = Double.MIN_VALUE;

        for (double num : numeros) {
            total += num;
            if (num < minimo) {
                minimo = num;
            }
            if (num > maximo) {
                maximo = num;
            }
        }

        double media = total / n;

        System.out.printf("Total de números lidos: %d%n", n);
        System.out.printf("Valor mínimo: %.2f%n", minimo);
        System.out.printf("Valor máximo: %.2f%n", maximo);
        System.out.printf("Média: %.2f%n", media);

        sc.close();
    }
}

