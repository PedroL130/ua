import java.util.Scanner;
import aula4.*;
import java.lang.Math;




public class ex1 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        while (true) {
            System.out.println("Escolha uma opção:");
            System.out.println("1 - Criar um triângulo");
            System.out.println("2 - Criar um retângulo");
            System.out.println("3 - Sair");

            int opcao = sc.nextInt();

            if (opcao == 1) {
                System.out.print("Digite o lado 1 do triângulo: ");
                double lado1 = sc.nextDouble();

                System.out.print("Digite o lado 2 do triângulo: ");
                double lado2 = sc.nextDouble();

                System.out.print("Digite o lado 3 do triângulo: ");
                double lado3 = sc.nextDouble();

                try {
                    Triangulo t = new Triangulo(lado1, lado2, lado3);
                    System.out.println(t.toString());
                    System.out.println("Área: " + t.calcularArea());
                    System.out.println("Perímetro: " + t.calcularPerimetro());
                } catch (IllegalArgumentException e) {
                    System.out.println("Erro: " + e.getMessage());
                }
            } else if (opcao == 2) {
                System.out.print("Digite a altura do retângulo: ");
                double altura = sc.nextDouble();

                System.out.print("Digite o comprimento do retângulo: ");
                double comprimento = sc.nextDouble();

                try {
                    Retangulo r = new Retangulo(altura, comprimento);
                    System.out.println(r.toString());
                    System.out.println("Área: " + r.calcularArea());
                    System.out
                    System.out.println("Perímetro: " + r.calcularPerimetro());
            } catch (IllegalArgumentException e) {
                System.out.println("Erro: " + e.getMessage());
            }
        } else if (opcao == 3) {
            break;
        } else {
            System.out.println("Opção inválida");
        }
    }

    sc.close();
}
}




