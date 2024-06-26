package br.senac.pr.projeto_jdbc;

import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class AnimalDAO {
  private final JdbcTemplate jdbcTemplate;

  public AnimalDAO(JdbcTemplate jdbcTemplate) {
    this.jdbcTemplate = jdbcTemplate;
  }

  public void insert(Animal animal) {
    String sql = """
          INSERT INTO ANIMAL (animal_id, nome, especie_id, raca, peso, idade, dono_id)
          VALUES (?, ?, ?, ?, ?, ?, ?)
        """;
    jdbcTemplate.update(sql, animal.getAnimalId(), animal.getNome(), animal.getEspecieId(),
        animal.getRaca(), animal.getPeso(),
        animal.getIdade(), animal.getDonoId());
  }

@SuppressWarnings("deprecation")
public Animal findById(int animalId) {
    String sql = "SELECT * FROM ANIMAL WHERE animal_id = ?";
    return jdbcTemplate.queryForObject(sql, new Object[]{animalId}, (rs, rowNum) -> {
        Animal animal = new Animal();
        animal.setAnimalId(rs.getInt("animal_id"));
        animal.setNome(rs.getString("nome"));
        animal.setEspecieId(rs.getInt("especie_id"));
        animal.setRaca(rs.getString("raca"));
        animal.setPeso(rs.getFloat("peso"));
        animal.setIdade(rs.getInt("idade"));
        animal.setDonoId(rs.getInt("dono_id"));
        return animal;
    });
}

public List<Animal> findAll() {
    String sql = "SELECT * FROM ANIMAL";
    return jdbcTemplate.query(sql, (rs, rowNum) -> {
        Animal animal = new Animal();
        animal.setAnimalId(rs.getInt("animal_id"));
        animal.setNome(rs.getString("nome"));
        animal.setEspecieId(rs.getInt("especie_id"));
        animal.setRaca(rs.getString("raca"));
        animal.setPeso(rs.getFloat("peso"));
        animal.setIdade(rs.getInt("idade"));
        animal.setDonoId(rs.getInt("dono_id"));
        return animal;
    });
}

public void deleteById(int animalId) {
    String sql = "DELETE FROM ANIMAL WHERE animal_id = ?";
    jdbcTemplate.update(sql, animalId);
}

}
