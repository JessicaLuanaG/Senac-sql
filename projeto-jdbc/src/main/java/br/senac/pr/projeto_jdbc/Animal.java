package br.senac.pr.projeto_jdbc;

public class Animal {
  private Integer animalId;
  private String nome;
  private Integer especieId;
  private String raca;
  private Float peso;
  private Integer idade;
  private Integer donoId;

  public Animal(){
    this.animalId = 0;
    this.nome = "";
    this.especieId = 0;
    this.raca = "";
    this.peso = 0.0f;
    this.idade = 0;
    this.donoId = 0;
  };

  public Animal(Integer animalId, String nome, Integer especieId, String raca, Float peso, Integer idade,
      Integer donoId) {
    this.animalId = animalId;
    this.nome = nome;
    this.especieId = especieId;
    this.raca = raca;
    this.peso = peso;
    this.idade = idade;
    this.donoId = donoId;
  }

  public Integer getAnimalId() {
    return animalId;
  }

  public void setAnimalId(Integer animalId) {
    this.animalId = animalId;
  }

  public String getNome() {
    return nome;
  }

  public void setNome(String nome) {
    this.nome = nome;
  }

  public Integer getEspecieId() {
    return especieId;
  }

  public void setEspecieId(Integer especieId) {
    this.especieId = especieId;
  }

  public String getRaca() {
    return raca;
  }

  public void setRaca(String raca) {
    this.raca = raca;
  }

  public Float getPeso() {
    return peso;
  }

  public void setPeso(Float peso) {
    this.peso = peso;
  }

  public Integer getIdade() {
    return idade;
  }

  public void setIdade(Integer idade) {
    this.idade = idade;
  }

  public Integer getDonoId() {
    return donoId;
  }

  public void setDonoId(Integer donoId) {
    this.donoId = donoId;
  }

}
