package aula06.pessoa;

import aula5.DateYMD;

public class Pessoa {
    private String nome;
    private int cc;
    private DateYMD dataNasc;

    public Pessoa(String nome, int cc, DateYMD dataNasc) {

        if (nome.split(" ").length != 2) {
            throw new IllegalArgumentException("Nome invalido");
        } else {
            this.nome = nome;
        }

        if (cc < 0 || cc > 99999999) {
            throw new IllegalArgumentException("CC invalido");
        } else {
            this.cc = cc;
        }

        if (DateYMD.valid(dataNasc.getDay(), dataNasc.getMonth(), dataNasc.getYear())) {
            this.dataNasc = dataNasc;
        } else {
            throw new IllegalArgumentException("Data de nascimento invalido");
        }

    }

    public String getNome() {
        return nome;
    }

    public int getCC() {
        return cc;
    }

    public DateYMD getDate() {
        return dataNasc;
    }

    public void setNome(String nome) {

        if (nome.split(" ").length != 2) {
            throw new IllegalArgumentException("Nome invalido");
        } else {
            this.nome = nome;
        }

    }

    @Override
    public String toString() {
        return String.format("%s; CC: %d; Data de Nascimento: %02d/%02d/%04d", nome, cc, dataNasc.getDay(),
                dataNasc.getMonth(), dataNasc.getYear());
    }

}