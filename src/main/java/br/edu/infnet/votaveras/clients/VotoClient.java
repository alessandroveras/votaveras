package br.edu.infnet.votaveras.clients;

import java.util.List;

import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

import br.edu.infnet.votaveras.model.domain.Voto;

@FeignClient(url = "localhost:8080/api/voto", name = "votoClient")
public interface VotoClient {

	@GetMapping(value = "/{idVoto}/listar")
	public Voto obterPorId(@PathVariable Integer idVoto);

	@GetMapping(value = "/listar")
	public List<Voto> obterLista();

	@PostMapping(value = "/incluir")
	public void incluir(@RequestBody Voto voto);
	
	@DeleteMapping(value = "/{id}/excluir")
	public void excluir(@PathVariable Integer id);
}
