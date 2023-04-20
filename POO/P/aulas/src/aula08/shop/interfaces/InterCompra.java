package aula08.shop.interfaces;
import aula08.shop.GeneralProducts;

public interface InterCompra {
    void adicionarProduto (GeneralProducts produto, int quantidade);
    void listarProdutos();
    double calcularTotal();
}
