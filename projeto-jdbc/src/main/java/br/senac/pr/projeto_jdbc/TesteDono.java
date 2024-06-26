package br.senac.pr.projeto_jdbc;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ConfigurableApplicationContext;

@SpringBootApplication
public class TesteDono {

	public static void main(String[] args) {
		ConfigurableApplicationContext app = SpringApplication.run(ProjetoJdbcApplication.class, args);

		DonoDAO DonoDAO = app.getBean(DonoDAO.class);
		Dono dono = new Dono(99, 14, "Marcio", "Marceneiro", "Nepal");
		DonoDAO.insert(dono);

	}

}
