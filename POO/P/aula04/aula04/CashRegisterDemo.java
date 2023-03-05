class Product {
    private String name;
    private double price;
    private int quantity;

    public Product(String name, double price, int quantity) {
        this.name = name;
        this.price = price;
        this.quantity = quantity;
    }

    public double getTotalValue() {
        return price * quantity;
    }

    public String getName() {
        return name;
    }

    public double getPrice() {
        return price;
    }

    public int  getQuantity() {
        return quantity;
    }
}


class CashRegister {

    // TODO: completar implementação da clas
    private Product[] products;
    private int count;

    public CashRegister(int size) {
        products = new Product[size];
        count = 0;
    }

    public void addProduct(Product p) {
        products[count] = p;
        count++;
    }

    public double getTotal() {
        double total = 0;
        for (int i = 0; i < count; i++) {
            total += products[i].getTotalValue();
        }
        return total;
    }

    public void printReceipt() {
        System.out.println("Product\tPrice\tQuantity\tTotal");
        for (int i = 0; i < count; i++) {
            Product p = products[i];
            System.out.println(p.getName() + "\t" + p.getPrice() + "\t" + p.getQuantity() + "\t\t" + p.getTotalValue());
        }
        System.out.println("Total value: " + getTotal());
    }

}

public class CashRegisterDemo {

    public static void main(String[] args) {

        // Cria e adiciona 5 produtos
        CashRegister cr = new CashRegister();
        cr.addProduct(new Product("Book", 9.99, 3));
        cr.addProduct(new Product("Pen", 1.99, 10));
        cr.addProduct(new Product("Headphones", 29.99, 2));
        cr.addProduct(new Product("Notebook", 19.99, 5));
        cr.addProduct(new Product("Phone case", 5.99, 1));
        
        // TODO: Listar o conteúdo e valor total
        System.out.println(cr);

    }
}