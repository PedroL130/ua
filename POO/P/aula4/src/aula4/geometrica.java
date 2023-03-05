package aula4;
import java.util.Scanner;
import java.lang.Math;

class Circulo {
    private double raio;

    double getRaio(){
        return raio;
    }

    void setRaio(double r){
        if (r<0 ){
            throw new IllegalArgumentException("O raio nao pode ser negativo");
        }
        raio = r;
    }

    double Perimetro(){
        return 2*Math.PI*raio;
    }

    double Area(){
        return Math.PI*raio*raio;
    }

    @Override
    String toString(){
        return "Raio: "+raio+"\nPerimetro: "+Perimetro()+"\nArea: "+Area();
    }
    
    @Override
    boolean equals(Object obj){
       if (!(obj instanceof Circulo)){
        return false;
       }
       Circulo other = (Circulo) obj;
       return raio == other.raio;
    }
       
}

class Triangulo {

    double lado1,lado2,lado3;

    double getLado1(){
        return lado1;
    }

    double getLado2(){
        return lado2;
    }

    double getLado3(){
        return lado3;
    }

    void setLado1 (double l1){
        if (l1<0){
            throw new IllegalArgumentException("O lado nao pode ser negativo");
        }
        if (l1 >= lado2 + lado3) {
            throw new IllegalArgumentException("O lado não pode ser maior que a soma dos outros dois");
        }
        lado1 = l1;
    }

    void setLado2 (double l2){
        if (l2<0){
            throw new IllegalArgumentException("O lado nao pode ser negativo");
        }
        if (l2 >= lado1 + lado3) {
            throw new IllegalArgumentException("O lado não pode ser maior que a soma dos outros dois");
            }
        lado2 = l2;
    }

    void setLado3 (double l3){
        if (l3<0){
            throw new IllegalArgumentException("O lado nao pode ser negativo");
        }
        if (l3 >= lado1 + lado2) {
            throw new IllegalArgumentException("O lado não pode ser maior que a soma dos outros dois");
            }
        lado3 = l3;
    }

    double perimetro(){
        return lado1 + lado2 + lado3;
    }

    double area(){
        double s = perimetro()/2;
        return Math.sqrt(s*(s-lado1)*(s-lado2)*(s-lado3));
    }

    @Override
    String toString() {
        return "Lado 1: " + lado1 + " Lado 2: " + lado2 + " Lado 3: " + lado3;
    }
     
    @Override
    boolean equals(Object obj){
        if (!(obj instanceof Triangulo)) {
            return false;
        }
        Triangulo other = (Triangulo) obj;
        return lado1 == other.lado1 && lado2 == other.lado2 && lado3 == other.lado3;
    }
       
}

class Retangulo {

    private double comprimento,altura;

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
