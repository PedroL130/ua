package aula08.shop;

import aula08.shop.interfaces.InterProduto;

public class GeneralProducts implements InterProduto{
    private String name;
    private int QStock=0;
    private double price;

    public GeneralProducts(String name, int qStock, double price) {
        this.name = name;
        this.QStock = qStock;
        this.price = price;
    }

    public String getNome() {
        return this.name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getQuantidade() {
        return this.QStock;
    }

    public void setQuantidade(int qStock) {
        this.QStock = qStock;
    }

    public double getPreco() {
        return this.price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public void adicionarQuantidade(int quantidade){
        this.QStock += quantidade;
    }

    public void removerQuantidade(int quantidade){
        this.QStock -= quantidade;
    }

    @Override
    public String toString() {
        return "GeneralProducts [name=" + name + ", QStock=" + QStock + ", price=" + price + "]";
    }
    
}
