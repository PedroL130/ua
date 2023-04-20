package aula06.pessoa;

import java.time.LocalDateTime;

import aula5.DateYMD;

public class Aluno extends Pessoa {
    private String iNome;
    private int iBI, NMec;
    public static int NMecs = 100;
    private DateYMD iDataNasc;

    private LocalDateTime now1 = LocalDateTime.now();
    private int day = now1.getDayOfMonth();
    private int month = now1.getMonthValue();
    private int year = now1.getYear();
    private DateYMD iDataInsc;
    
    public Aluno(String iNome, int iBI, DateYMD iDataNasc, DateYMD iDataInsc) {
        super(iNome, iBI, iDataNasc);
        this.iNome = iNome;
        this.iBI = iBI;
        this.iDataNasc = iDataNasc;

        if (DateYMD.valid(iDataInsc.getDay(), iDataInsc.getMonth(), iDataInsc.getYear())) {
            this.iDataInsc = iDataInsc;
        } else {
            throw new IllegalArgumentException("Data de nascimento invalido");
        }

        this.setNMec(Aluno.NMecs++);

    }

    public Aluno(String iNome, int iBI, DateYMD iDataNasc) {
        super(iNome, iBI, iDataNasc);
        this.iNome = iNome;
        this.iBI = iBI;
        this.iDataNasc = iDataNasc;

        this.iDataInsc = new DateYMD(day, month, year);
        this.setNMec(Aluno.NMecs++);

    }

    public void setNMec(int NMec) {
        this.NMec = NMec;
    }

    public int getNMec() {
        return NMec;
    }

    public String getName(){
        return iNome;
    }

    @Override
    public String toString() {
        return String.format(
                "%s; CC: %d; NMec: %d, Data de Nascimento: %02d/%02d/%04d, Data de Inscrição: %02d/%02d/%04d", iNome,
                iBI, NMec, iDataNasc.getDay(), iDataNasc.getMonth(), iDataNasc.getYear(), iDataInsc.getDay(),
                iDataInsc.getMonth(), iDataInsc.getYear());
    }

}
