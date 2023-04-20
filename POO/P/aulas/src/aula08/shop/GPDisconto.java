package aula08.shop;

public class GPDisconto extends GeneralProducts{

    private int disconto;

    public GPDisconto(String name, int qStock, double price, int disconto) {
        super(name, qStock, price);
        this.disconto = disconto;
    }

    public int getDisconto() {
        return this.disconto;
    }

    public void setDisconto(int disconto) {
        this.disconto = disconto;
    }

    @Override
    public String toString() {
        return super.toString()+ "GPDisconto [disconto=" + disconto + "]";
    }   
    
}
