package aula08.shop;

import java.util.LinkedHashMap;

import aula08.shop.interfaces.InterCompra;

public class CarShop implements InterCompra {

    private int QStock;
    private LinkedHashMap<GeneralProducts, Integer> p ;

    

    public CarShop() {
        p = new LinkedHashMap<>();
    }

    

    @Override
    public void adicionarProduto(GeneralProducts produto, int quantidade) {
        if (produto.getQuantidade()>=quantidade){
            produto.setQuantidade(produto.getQuantidade()-quantidade);
            p.put(produto, quantidade);
        }else if (p.containsKey(produto)){
            p.put(produto, p.get(produto)+quantidade);
        }else{
            p.put(produto, produto.getQuantidade());
        }
        
    }

    @Override
    public void listarProdutos() {
        for (GeneralProducts produto : p.keySet()) {
            System.out.println(produto.getNome() + " - " + produto.getPreco() + " R$"+"-"+p.get(produto));
        }
    }

    @Override
    public double calcularTotal() {
        double total=0;
        for (GeneralProducts produto : p.keySet()) {
            total += produto.getPreco() * p.get(produto);
        }
        return total;
    }



    public LinkedHashMap<GeneralProducts, Integer> getP() {
        return p;
    }



    public void setP(LinkedHashMap<GeneralProducts, Integer> p) {
        this.p = p;
    }



    public int getQStock() {
        return QStock;
    }



    public void setQStock(int qStock) {
        QStock = qStock;
    }
    
}
