package br.senac.pr.projeto_jdbc;

import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class EspecieDAO {
    private final JdbcTemplate jdbcTemplate;

    public EspecieDAO(JdbcTemplate jdbcTemplate) {
      this.jdbcTemplate = jdbcTemplate;
    }

    public void insert(Especie especie){
        String sql = "INSERT INTO ESPECIE (especie_id, nome) VALUES(?,?)";
            jdbcTemplate.update(sql, especie.getEspecieId(),especie.getNome());
    }


    public List<Especie> findAll() {
        String sql = "SELECT * FROM ESPECIE";
        return jdbcTemplate.query(sql, (rs, rowNum) ->{
            Especie e = new Especie(rs.getInt("especie_id"),
            rs.getString("nome"));
            return e;
        });
    }

    public void update(Especie especie) {
        String sql = "UPDATE ESPECIE SET nome =? WHERE especie_id =?";
        jdbcTemplate.update(sql, especie.getNome(), especie.getEspecieId());
    }

    public void deleteById(int especieId){
        String sql = "DELETE FROM ESPECIE WHERE especie_id =?";
        jdbcTemplate.update(sql, especieId);
    }
    
}
