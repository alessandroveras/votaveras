package br.edu.infnet.votaveras;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.ApplicationArguments;
import org.springframework.boot.ApplicationRunner;
import org.springframework.stereotype.Component;

import br.edu.infnet.votaveras.model.domain.Eleitor;
import br.edu.infnet.votaveras.model.domain.service.EleitorService;

@Component
public class EleitorLoader implements ApplicationRunner {

	@Autowired
	private EleitorService eleitorService;

	@Override
	public void run(ApplicationArguments args) throws Exception {

		Eleitor eleitor = new Eleitor();
		eleitor.setCodigo("1");
		eleitor.setNome("eleitor 1");
		eleitor.setEmail("eleitor1@myemail.com");
		eleitor.setTelefone("2199998888");
		eleitor.setToken("aszasdgqwkjaslasdhqgaaa");

		try {
			eleitorService.incluir(eleitor);
			System.out.println("[SUCESSO] Inclusao realizada!!!");

		} catch (Exception e) {
			System.out.println("[ERRO] " + e.getMessage());
		}
	}

}
