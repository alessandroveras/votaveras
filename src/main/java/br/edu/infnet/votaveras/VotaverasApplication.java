package br.edu.infnet.votaveras;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.openfeign.EnableFeignClients;

@SpringBootApplication
@EnableFeignClients
public class VotaverasApplication {

	public static void main(String[] args) {
		SpringApplication.run(VotaverasApplication.class, args);
	}

}
