package br.senac.pr.projeto_jdbc;

public class Especie {
    private Integer especieId;
    private String nome;

    public Especie(Integer especieId, String nome){
        this.especieId = especieId;
        this.nome = nome;
    }
    
    public Integer getEspecieId() {
        return especieId;
    }
    public void setEspecieId(Integer especieId){
        this.especieId =  especieId;
    }

    public String getNome(){
        return nome;
    }

    public void setNome(String nome){
        this.nome = nome;
    }
}
