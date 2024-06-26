package br.senac.pr.projeto_jdbc;

public class Dono {
    private Integer dono_id;
    private String nome;
    private Integer idade;
    private String profissao;
    private String endereco;

    public Dono(Integer dono_id, Integer idade, String nome, String profissao, String endereco){
        this.dono_id = dono_id;
        this.idade = idade;
        this.nome = nome;
        this.profissao = profissao;
        this.endereco = endereco;
    }

    public Integer getDono_id(){
        return dono_id;
    }

    public Integer getIdade(){
        return idade;
    }

    public String getnome(){
        return nome;
    }

    public String getProfissao(){
        return profissao;
    }

    public String getEndereco(){
        return endereco;
    }

    public void setDono_id(Integer dono_id){
        this.dono_id = dono_id;
    }

    public void setIdade(Integer idade){
        this.idade = idade;
    }

    public void setNome(String nome){
        this.nome = nome;
    }

    
    public void setProfissao(String profissao){
        this.profissao = profissao;
    }

    
    public void setEndereco(String endereco){
        this.endereco = endereco;
    }

}
