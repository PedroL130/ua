package aula06.pessoa;

import aula5.DateYMD;

public class Bolseiro extends Aluno {
    private Professor prof_orientador;
    private int month_bolsa;
    private Professor p;

  

    public Bolseiro(String iNome, int iBI, DateYMD iDataNasc,Professor p,int month_bolsa) {
        super(iNome, iBI, iDataNasc);
        this.prof_orientador=p;

    }



    public Professor getProf_orientador() {
        return prof_orientador;
    }



    public void setProf_orientador(Professor prof_orientador) {
        this.prof_orientador = prof_orientador;
    }



    public int getMonth_bolsa() {
        return month_bolsa;
    }



    public void setMonth_bolsa(int month_bolsa) {
        this.month_bolsa = month_bolsa;
    }



    public Professor getP() {
        return p;
    }



    public void setP(Professor p) {
        this.p = p;
    }

    

}
