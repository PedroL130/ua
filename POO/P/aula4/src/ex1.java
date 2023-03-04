//Implemente classes que permitam modelar as seguintes formas geométricas:• Círculo, caracterizado pelo seu raio; •Triângulo,caracterizado pela dimensão dos seus lados(lado1,lado2,lado3);•Retângulo,caracterizado por comprimento e altura.Garanta ainda as seguintes especificações:a)crie classes que representem cada uma das figuras geométricas,implementando construtores e métodos adequados para cada classe.b)adicione todos os métodos especiais importantes(toString(),equals(),get…(),set…(),...);c)nos construtores e métodos modificadores(set...),verifique pré-condições adequadas:raio e lados têm de ser valores positivos e lados do triângulo têm de satisfazer a desigualdade triangular;d)implemente um método para calcular a área de cada tipo de figura(para triângulo,ver fórmula de Heron);e)implemente um método para calcular o perímetro de cada tipo de figura;f)implemente um programa que teste todas as classes e métodos criados;o programa deve criar um conjunto de figuras,especificadas pelo utilizador através de um menu,listá-las(o método toString()deve mostrar o tipo e características da figura),e comparar os pares de figuras do mesmo tipo(método equals()?

// can do some functions to calculate the area of a rectangle?






public class ex1 {
    public static void main(String[] args) {

        System.out.println(area(9));
        System.out.println(area(8, 9));
    }

    public static double area(double radius) {
        if (radius < 0) {
            System.out.println("Invalid value");
            return -1.0;
        } else if (radius > 0) {
            System.out.println("It's works");
            return +1.0;
        } else {
            return 0.0;
        }
    }

    public static double area(double x, double y) {
        if ((x < 0) || (y < 0)) {
            System.out.println("Invalid value");
            return -1.0;
        } else if (x > 0 || y > 0) {
            System.out.println("Works");
            return +1.0;
        } else {
            return 0.0;
        }
    }

}
