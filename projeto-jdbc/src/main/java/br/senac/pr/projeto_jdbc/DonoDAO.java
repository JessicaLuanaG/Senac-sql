package br.senac.pr.projeto_jdbc;

import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class DonoDAO {
    private final JdbcTemplate jdbcTemplate;

    public DonoDAO(JdbcTemplate jdbcTemplate) {
      this.jdbcTemplate = jdbcTemplate;
    }

    public void insert(Dono dono){
        String sql = "INSERT INTO DONO (dono_id, nome, idade, profissao, endereco) VALUES(?,?,?,?,?)";
            jdbcTemplate.update(sql, dono.getDono_id(),dono.getnome(), dono.getIdade(), dono.getProfissao(), dono.getEndereco());
    }

    public List<Dono> findAll() {
        String sql = "SELECT * FROM DONO";
        return jdbcTemplate.query(sql, (rs, rowNum) ->{
            Dono e = new Dono(rs.getInt("dono_id"),
            rs.getInt("idade"),
            rs.getString("nome"),
            rs.getString("profissao"),
            rs.getString("endereco")
            );
            return e;
        });
    }

    public void update(Dono dono) {
        String sql = "UPDATE DONO SET nome =? , idade =?, profissao =?, endereco=? WHERE dono_id =?";
        jdbcTemplate.update(sql, dono.getnome(), dono.getIdade(), dono.getProfissao(), dono.getEndereco(), dono.getDono_id());
    }

    
    public void deleteById(int donoId){
        String sql = "DELETE FROM DONO WHERE dono_id =?";
        jdbcTemplate.update(sql, donoId);
    }
}
