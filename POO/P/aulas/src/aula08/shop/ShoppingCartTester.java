package aula08.shop;

public class ShoppingCartTester {
    public static void main(String[] args) {
        GeneralProducts p1 = new GeneralProducts("Camisolas", 10, 3);
        GeneralProducts p2 = new GeneralProducts("Calças", 30, 1);
        GeneralProducts p3 = new GPDisconto("Sapatilhas", 50, 2, 50);
        GeneralProducts p4 = new GPDisconto("Casacos", 100, 1, 10);
        
        CarShop carrinho = new CarShop();
        carrinho.adicionarProduto(p1, 1);
        
        carrinho.adicionarProduto(p2, 5);
        carrinho.adicionarProduto(p3, 2);
        carrinho.adicionarProduto(p4, 1);

        carrinho.listarProdutos();
        System.out.printf("Preço total da compra %.2f\n", carrinho.calcularTotal());
    }
}
