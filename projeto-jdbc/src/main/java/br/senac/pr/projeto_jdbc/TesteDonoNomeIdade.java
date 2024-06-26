package br.senac.pr.projeto_jdbc;

import java.util.List;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ConfigurableApplicationContext;

@SpringBootApplication
public class TesteDonoNomeIdade {
    public static void main(String[] args) {
		ConfigurableApplicationContext app = SpringApplication.run(ProjetoJdbcApplication.class, args);

        DonoDAO donoDAO = app.getBean(DonoDAO.class);
        List <Dono> lista = donoDAO.findAll();
        for (Dono d:lista){
            System.out.println(d.getnome() + " " + d.getIdade());
        }
	}

}
