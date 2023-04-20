package aula06.pessoa;

import aula5.DateYMD;

public class Professor extends Pessoa {
    private String categoria;
    private String dep;

    public Professor( String iNome, int iBI, DateYMD iDataNasc,String categoria, String dep) {
        super(iNome, iBI, iDataNasc);
        if (!(categoria.equals("Auxiliar") || (categoria.equals("Associado")) || (categoria.equals("Catedrático")))) {
            throw new IllegalArgumentException("Nome invalido");
        } else {
            this.categoria = categoria;
        }
        this.dep = dep;

    }

    public String getCategoria() {
        return categoria;
    }

    public void setCategoria(String categoria) {
        this.categoria = categoria;
    }

    public String getDep() {
        return dep;
    }

    public void setDep(String dep) {
        this.dep = dep;
    }

    

}
