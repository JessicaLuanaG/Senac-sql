package br.senac.pr.projeto_jdbc;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ConfigurableApplicationContext;

@SpringBootApplication
public class ProjetoJdbcApplication {

	public static void main(String[] args) {
		ConfigurableApplicationContext app = SpringApplication.run(ProjetoJdbcApplication.class, args);

		AnimalDAO animalDAO = app.getBean(AnimalDAO.class);
		Animal animal = new Animal(99, "Patolino", 1, "Pato", 10.0f, 2, 1);
		animalDAO.insert(animal);

	}

}
