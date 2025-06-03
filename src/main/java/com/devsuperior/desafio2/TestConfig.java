package com.devsuperior.desafio2;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class TestConfig implements CommandLineRunner {

	public static void main(String[] args) {
		SpringApplication.run(TestConfig.class, args);
	}

	@Override
	public void run(String... args) throws Exception {

//		System.out.println("=== TESTE DO RELACIONAMENTO EM MEMÓRIA ===");
//		System.out.println("=================================================");
//
//		Categoria categoria = new Categoria(null, "Categoria Teste");
//		Atividades atividades = new Atividades(null, "Bruno", "Descrição teste", 200.0);
//
//		atividades.setCategoria(categoria);
//
//		System.out.println("Categoria Criada: " + categoria.getDescricao());
//		System.out.println("Atividade Criada: " + atividades.getNome());
//		System.out.println("Preço da atividade: " + atividades.getPreco());
//		System.out.println("Categoria da atividade: " + atividades.getCategoria().getDescricao());
//		System.out.println();
//		System.out.println("============================================================");
//		System.out.println("Testando se a categoria existe");
//		if(atividades.getCategoria() == categoria) {
//			System.out.println("Relacionamento Funcionando");
//		} else {
//			System.out.println("Algo está errado");
//		}
//		System.out.println("============================================================");
//		System.out.println();
//		System.out.println("====ALTERANDO A CATEGORIA====");
//		categoria.setDescricao("Mudei a Categoria");
//		System.out.println();
//		System.out.println("Após mudar de categoria: " + atividades.getCategoria().getDescricao());

	}
}
