package aula08;

import java.util.ArrayList;
import java.util.List;

import javax.security.auth.PrivateCredentialPermission;

interface KmPercorridosInterface {
    void trajeto(int quilometros);

    int ultimoTrajeto();

    int distanciaTotal();
}

abstract class Veiculo implements KmPercorridosInterface {
    private String matricula, marca, modelo;
    private int cv;
    private int kmTotal;
    private int ultimoKm;

    public Veiculo(String matricula, String marca, String modelo, int cv) {
        this.matricula = matricula;
        this.marca = marca;
        this.modelo = modelo;
        this.cv = cv;
        this.kmTotal = 0;
        this.ultimoKm = 0;

    }

    public void setMatricula(String matricula) {
        this.matricula = matricula;
    }

    public String getMatricula() {
        return this.matricula;
    }

    public void setMarca(String marca) {
        this.marca = marca;
    }

    public String getMarca() {
        return this.marca;
    }

    public void setModelo(String modelo) {
        this.modelo = modelo;
    }

    public String getModelo() {
        return this.modelo;
    }

    public void setCv(int cv) {
        this.cv = cv;
    }

    public int getCv() {
        return this.cv;
    }

    @Override
    public void trajeto(int quilometros) {
        this.kmTotal += quilometros;
        this.ultimoKm = quilometros;
    }

    @Override
    public int ultimoTrajeto() {
        return ultimoKm;
    }

    @Override
    public int distanciaTotal() {
        return kmTotal;
    }

    @Override
    public String toString() {
        return "Veiculo [matricula=" + matricula + ", marca=" + marca + ", modelo=" + modelo + ", cv=" + cv + "]";
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((matricula == null) ? 0 : matricula.hashCode());
        result = prime * result + ((marca == null) ? 0 : marca.hashCode());
        result = prime * result + ((modelo == null) ? 0 : modelo.hashCode());
        result = prime * result + cv;
        result = prime * result + kmTotal;
        result = prime * result + ultimoKm;
        return result;
    }

}

class Motociclo extends Veiculo {
    private String tipo;

    public Motociclo(String matricula, String marca, String modelo, int cv, String tipo) {
        super(matricula, marca, modelo, cv);
        this.tipo = tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public String getTipo() {
        return this.tipo;
    }

    @Override
    public String toString() {
        return "Motociclo [matricula=" + getMatricula() + ", marca=" + getMarca() + ", modelo=" + getModelo() + ", cv="
                + getCv() + ", tipo=" + tipo + "]";
    }

}

class AutomovelLigeiro extends Veiculo {

    private int Nbagageira;
    private String Nquadro;

    public AutomovelLigeiro(String matricula, String marca, String modelo, int cv, String nquadro, int nbagageira) {
        super(matricula, marca, modelo, cv);
        this.Nquadro = nquadro;
        this.Nbagageira = nbagageira;
    }

    public String getNquadro() {
        return this.Nquadro;
    }

    public void setNquadro(String Nquadro) {
        this.Nquadro = Nquadro;
    }

    public int getNbagageira() {
        return this.Nbagageira;
    }

    public void setNbagageira(int Nbagageira) {
        this.Nbagageira = Nbagageira;
    }

    @Override
    public String toString() {
        return "AutomovelLigeiro [matricula=" + getMatricula() + ", marca=" + getMarca() + ", modelo=" + getModelo()
                + ", cv=" + getCv() + ", Nbagageira=" + Nbagageira + ", Nquadro=" + Nquadro + "]";
    }

}

class Taxi extends AutomovelLigeiro {
    private String licenca;

    public Taxi(String matricula, String marca, String modelo, int cv, String nquadro, int nbagageira, String licenca) {
        super(matricula, marca, modelo, cv, nquadro, nbagageira);
        this.licenca = licenca;
    }

    public String getLicenca() {
        return this.licenca;
    }

    public void setLicenca(String licenca) {
        this.licenca = licenca;
    }

    @Override
    public String toString() {
        return "Taxi [matricula=" + getMatricula() + ", marca=" + getMarca() + ", modelo=" + getModelo() + ", cv="
                + getCv() + ", licenca=" + licenca + "]";
    }

}

class PesadoMercadorias extends Veiculo {
    private double peso, Cmax;
    private String Nquadro;

    public PesadoMercadorias(String matricula, String marca, String modelo, int cv, String nquadro, double peso,
            double cmax) {
        super(matricula, marca, modelo, cv);
        this.peso = peso;
        this.Cmax = cmax;
        this.Nquadro = nquadro;
    }

    public double getPeso() {
        return this.peso;
    }

    public void setPeso(double peso) {
        this.peso = peso;
    }

    public double getCmax() {
        return this.Cmax;
    }

    public void setCmax(double Cmax) {
        this.Cmax = Cmax;
    }

    public String getNquadro() {
        return this.Nquadro;
    }

    public void setNquadro(String Nquadro) {
        this.Nquadro = Nquadro;
    }

    @Override
    public String toString() {
        return "PesadoMercadorias [matricula=" + getMatricula() + ", marca=" + getMarca() + ", modelo=" + getModelo()
                + ", cv=" + getCv() + ", peso=" + peso + ", Cmax=" + Cmax + ", Nquadro=" + Nquadro + "]";
    }

}

class PesadoPassageiros extends Veiculo {
    private double peso;
    private int NMpass;
    private String Nquadro;

    public PesadoPassageiros(String matricula, String marca, String modelo, int cv, double peso, String nquadro,
            int nMpass) {
        super(matricula, marca, modelo, cv);
        this.peso = peso;
        Nquadro = nquadro;
        NMpass = nMpass;
    }

    public double getPeso() {
        return peso;
    }

    public void setPeso(double peso) {
        this.peso = peso;
    }

    public String getNquadro() {
        return Nquadro;
    }

    public void setNquadro(String nquadro) {
        Nquadro = nquadro;
    }

    public int getNMpass() {
        return NMpass;
    }

    public void setNMpass(int nMpass) {
        NMpass = nMpass;
    }

    @Override
    public String toString() {
        return "PesadoPassageiros [matricula=" + getMatricula() + ", marca=" + getMarca() + ", modelo=" + getModelo()
                + ", cv=" + getCv() + ", peso=" + peso + ", NMpass=" + NMpass + ", Nquadro=" + Nquadro + "]";
    }

}

class EAViaturas {
    private String nome, Cpostal, email;
    private List<Veiculo> veiculo;

    public EAViaturas(String nome, String cpostal, String email) {
        this.nome = nome;
        this.Cpostal = cpostal;
        this.email = email;
        this.veiculo = new ArrayList<>();
    }

    public void addVeiculo(Veiculo v) {
        this.veiculo.add(v);
    }

    public void removeVeiculo(Veiculo v) {
        this.veiculo.remove(v);
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getCpostal() {
        return Cpostal;
    }

    public void setCpostal(String cpostal) {
        Cpostal = cpostal;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public List<Veiculo> getVeiculo() {
        return veiculo;
    }

    public void setVeiculo(List<Veiculo> veiculo) {
        this.veiculo = veiculo;
    }

    @Override
    public String toString() {
        return "{" +
                " nome='" + getNome() + "'" +
                ", Cpostal='" + getCpostal() + "'" +
                ", email='" + getEmail() + "'" +
                ", veiculo='" + getVeiculo() + "'" +
                "}";
    }

}

interface VeiculoEletrico {
    int autonomia(); // devolve autonomia restante

    void carregar(int percentagem); // simula um carregamento até ‘percentagem’
}

abstract class PPEletrico extends PesadoPassageiros implements VeiculoEletrico {
    private int BAtual, BMax;
    private int PAtual = (100 * BMax) / BAtual;

    public PPEletrico(String matricula, String marca, String modelo, int cv, double peso, String nquadro, int nMpass,
            int bAtual, int bMax) {
        super(matricula, marca, modelo, cv, peso, nquadro, nMpass);
        this.BAtual = bAtual;
        this.BMax = bMax;
    }

    public int getBAtual() {
        return BAtual;
    }

    public void setBAtual(int bAtual) {
        BAtual = bAtual;
    }

    public int getBMax() {
        return BMax;
    }

    public int getPercentagemAtual() {
        return PAtual;
    }

    @Override
    public int autonomia() {
        // assumindo que 100% da 200km
        int km = PAtual * 2;

        return km;
    }

    @Override
    public void carregar(int percentagem) {
        // 1% demora 5min
        int Prestante = percentagem - PAtual;
        System.out.println("Vai demorar " + Prestante * 5 + " min");
    }

    public void setBMax(int bMax) {
        BMax = bMax;
    }

}

abstract class ALEletrico extends AutomovelLigeiro implements VeiculoEletrico {
    private int BAtual, BMax;
    private int PAtual = (100 * BMax) / BAtual;

    

    public ALEletrico(String matricula, String marca, String modelo, int cv, String nquadro, int nbagageira, int bAtual,
            int bMax) {
        super(matricula, marca, modelo, cv, nquadro, nbagageira);
        this.BAtual = bAtual;
        this.BMax = bMax;
    }

    public int getBAtual() {
        return BAtual;
    }

    public void setBAtual(int bAtual) {
        this.BAtual = bAtual;
    }

    public int getBMax() {
        return BMax;
    }

    public int getPercentagemAtual() {
        return PAtual;
    }

    @Override
    public int autonomia() {
        // assumindo que 100% da 100km
        int km = PAtual;

        return km;
    }

    @Override
    public void carregar(int percentagem) {
        // 1% demora 7min
        int Prestante = percentagem - PAtual;
        System.out.println("Vai demorar " + Prestante * 7 + " min");
    }

    public void setBMax(int bMax) {
        BMax = bMax;
    }
}

public class ex1 {
    public static void main(String[] args) {
        Motociclo m1 = new Motociclo("00-AB-12", "Honda", "CBR 600", 100, "desportivo");
        Motociclo m2 = new Motociclo("11-BC-23", "Yamaha", "MT-07", 80, "estrada");

        AutomovelLigeiro al1 = new AutomovelLigeiro("22-CD-34", "Volkswagen", "Golf", 110, "ABC123456789", 350);
        AutomovelLigeiro al2 = new AutomovelLigeiro("33-DE-45", "Renault", "Clio", 90, "DEF123456789", 250);

        Taxi t1 = new Taxi("44-EF-56", "Mercedes-Benz", "E-Class", 150, "GHI123456789", 400, "TAXI123");
        Taxi t2 = new Taxi("55-FG-67", "Toyota", "Prius", 110, "JKL123456789", 300, "TAXI456");

        PesadoMercadorias pm1 = new PesadoMercadorias("66-GH-78", "Volvo", "FH", 500, "MNO123456789", 20000, 40000);

        // System.out.println(m1.toString() +al1.toString() +t1.toString());

        EAViaturas p = new EAViaturas("p", "9829", "ununcd");
        p.addVeiculo(pm1);
        p.addVeiculo(t1);
        pm1.setCv(5);
        System.out.println(p.toString());

        t1.trajeto(6000);
        t1.trajeto(7980);
        pm1.trajeto(99999999);
        System.out.println(t1.distanciaTotal());
        System.out.println(p.getVeiculo());
        System.out.println(MoreKm(p.getVeiculo()));
        System.out.println(m1);

    }

    public static Veiculo MoreKm(List<Veiculo> car) {
        Veiculo MKm = null;
        int MDist = 0;
        for (Veiculo v : car) {
            if (v.distanciaTotal() > MDist) {
                MDist = v.distanciaTotal();
                MKm = v;
            }
        }
        return MKm;
    }

}