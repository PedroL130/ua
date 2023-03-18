//package sam.aula05;
import java.util.ArrayList;
import java.util.List;
import java.lang.management.ThreadInfo;

class Imovel {

    private String local;
    private int rooms, price, id;
    private boolean available = true;
    private DateYMD inicioLeilao, fimLeilao;

    public Imovel(int id, int rooms, String local, int price) {
        this.id = id;
        this.rooms = rooms;
        this.local = local;
        this.price = price;
    }

    public String getLocal() {
        return local;
    }

    public int getRooms() {
        return rooms;
    }

    public int getPrice() {
        return price;
    }

    

    public DateYMD getInicioLeilao() {
        return inicioLeilao;
    }

    public DateYMD getFimLeilao() {
        return fimLeilao;
    }

    public int getId() {
        return id;
    }

    public boolean getAvailable(){
        return available;
    }

    

    public boolean available(int id) {
        return available = false;
    }

    public void setAuction(DateYMD inicio, DateYMD fim) {
        this.inicioLeilao = inicio;
        this.fimLeilao = fim;
    }

    public boolean isAuction() {
        return inicioLeilao != null && fimLeilao != null;
    }

    public String toString() {
        return String.format("Imóvel %d; quartos: %d; localidade: %s; preço: %d; disponível: %s%s", id,rooms, local, price, available ? "sim" : "não", this.isAuction() ? String.format("; leilão: %s : %s", inicioLeilao, fimLeilao) : "");
    }

}

class RealEstate{
    private List <Imovel> imoveis;
    

    public RealEstate(){
        this.imoveis = new ArrayList<>();
    }

    public void newProperty(String local, int rooms, int price) {
        int id = 1000 + imoveis.size() + 1;
        Imovel imovel = new Imovel(id, rooms, local, price);
        imoveis.add(imovel);
    }

    public void sell(int id){
        for (Imovel imovel : imoveis){
            if (imovel.getId() == id){
                imovel.available(id);
            }
        }
    }

    public void setAuction(int id, DateYMD inicioleilao,int time){
        for (Imovel imovel : imoveis){
            if (imovel!=null && imovel.getId()==id){
                if (imovel.available(id)){
                    DateYMD fim = new DateYMD(inicioleilao.getDay(), inicioleilao.getMonth(), inicioleilao.getYear());
                    fim.addDays(time);
                    imovel.setAuction(inicioleilao, fim);
                }else{
                    System.out.printf("Imóvel %d não está disponível.\n", id);
                }
            }
        }
    }

    public String toString() {
        StringBuilder result = new StringBuilder().append("Propriedades:\n");
        for (Imovel imovel : imoveis){
            if (imovel != null){
                result.append(imovel).append("\n");
            }
        }
        return result.toString();
    }
}

public class Ex3 {
    public static void main(String[] args) {
        RealEstate imobiliaria = new RealEstate();
        imobiliaria.newProperty("Glória", 2, 30000);
        imobiliaria.newProperty("Vera Cruz", 1, 25000);
        imobiliaria.newProperty("Santa Joana", 3, 32000);
        imobiliaria.newProperty("Aradas", 2, 24000);
        imobiliaria.newProperty("São Bernardo", 2, 20000);

        imobiliaria.sell(1001);
        imobiliaria.setAuction(1002, new DateYMD(21, 3, 2023), 4);
        imobiliaria.setAuction(1003, new DateYMD(1, 4, 2023), 3);
        imobiliaria.setAuction(1001, new DateYMD(1, 4, 2023), 4);
        imobiliaria.setAuction(1010, new DateYMD(1, 4, 2023), 4);

        System.out.println(imobiliaria);

    }
}
