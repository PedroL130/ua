
import java.util.Scanner;
import java.lang.Math;

class Circulo {
    public double raio;

    public Circulo(double raio) {
        if (raio<0 ){
            throw new IllegalArgumentException("O raio nao pode ser negativo");
        }
        this.raio = raio;
        
    }

    public double getRaio(){
        return raio;
    }

    public void setRaio(double raio){
        if (raio<0 ){
            throw new IllegalArgumentException("O raio nao pode ser negativo");
        }
        this.raio = raio;
    }

    public double Perimetro(){
        return 2*Math.PI*raio;
    }

    public double calcularArea(){
        return Math.PI*raio*raio;
    }

    
    public String toString(){
        return "Raio: "+raio+"\nPerimetro: "+Perimetro()+"\nArea: "+Area();
    }
    
    
    public boolean equals(Object obj){
       if (!(obj instanceof Circulo)){
        return false;
       }
       Circulo other = (Circulo) obj;
       return raio == other.raio;
    }
       
}

class Triangulo {

    public double lado1,lado2,lado3;

    public double getLado1(){
        return lado1;
    }

    public double getLado2(){
        return lado2;
    }

    public double getLado3(){
        return lado3;
    }

    public void setLado1 (double l1){
        if (l1<0){
            throw new IllegalArgumentException("O lado nao pode ser negativo");
        }
        if (l1 >= lado2 + lado3) {
            throw new IllegalArgumentException("O lado não pode ser maior que a soma dos outros dois");
        }
        lado1 = l1;
    }

    public void setLado2 (double l2){
        if (l2<0){
            throw new IllegalArgumentException("O lado nao pode ser negativo");
        }
        if (l2 >= lado1 + lado3) {
            throw new IllegalArgumentException("O lado não pode ser maior que a soma dos outros dois");
            }
        lado2 = l2;
    }

    public void setLado3 (double l3){
        if (l3<0){
            throw new IllegalArgumentException("O lado nao pode ser negativo");
        }
        if (l3 >= lado1 + lado2) {
            throw new IllegalArgumentException("O lado não pode ser maior que a soma dos outros dois");
            }
        lado3 = l3;
    }

    public double perimetro(){
        return lado1 + lado2 + lado3;
    }

    public double area(){
        double s = perimetro()/2;
        return Math.sqrt(s*(s-lado1)*(s-lado2)*(s-lado3));
    }

    
    public String toString() {
        return "Lado 1: " + lado1 + " Lado 2: " + lado2 + " Lado 3: " + lado3;
    }
     
    
    public boolean equals(Object obj){
        if (!(obj instanceof Triangulo)) {
            return false;
        }
        Triangulo other = (Triangulo) obj;
        return lado1 == other.lado1 && lado2 == other.lado2 && lado3 == other.lado3;
    }
       
}

class Retangulo {

    public double comprimento,altura;

    public Retangulo(double comprimento, double altura){
        if (comprimento<0 || altura<0){
            throw new IllegalArgumentException("O comprimento e/ou altura não pode ser negativos");
        }else{
            this.comprimento=comprimento;
            this.altura=altura;
        }
    }

    public double getAltura() {
        return altura;
    }
    
    public void setAltura(double altura) {
        if (altura <= 0) {
            throw new IllegalArgumentException("A altura deve ser positiva");
        }
        this.altura = altura;
    }
    
    public double getComprimento() {
        return comprimento;
    }
    
    public void setComprimento(double comprimento) {
        if (comprimento <= 0) {
            throw new IllegalArgumentException("O comprimento deve ser positivo");
        }
        this.comprimento = comprimento;
    }
    
    public double calcularPerimetro() {
        return 2 * (altura + comprimento);
    }
    
    public double calcularArea() {
        return altura * comprimento;
    }
    
    @Override
    public String toString() {
        return String.format("Retangulo [altura=%.2f, comprimento=%.2f]", altura, comprimento);
    }
    
    @Override
    public boolean equals(Object obj) {
        if (!(obj instanceof Retangulo)) {
            return false;
        }
        Retangulo other = (Retangulo) obj;
        return comprimento == other.comprimento && altura == other.altura;
    }

    
       
}

class Teste{
    public static void main(String[] args) {
        Retangulo r1 = new Retangulo(2, 3);
        Retangulo r2 = new Retangulo(3, 4);
        System.out.println(r1.equals(r2));
        System.out.println(r1.calcularArea());
        
        Circulo c1 = new Circulo(8);
        Circulo c2 = new Circulo(8);
        System.out.println(c1.equals(c2));
        System.out.println(c1.calcularArea());



        

        
    }

}
