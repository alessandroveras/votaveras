package br.edu.infnet.votaveras.clients;

import java.util.List;

import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

import br.edu.infnet.votaveras.model.domain.Candidato;

@FeignClient(url = "localhost:8080/api/candidato", name = "candidatoClient")
public interface CandidatoClient {

	
	@GetMapping(value = "/listar")
	public List<Candidato> obterLista();
	
	@GetMapping(value = "/listar/eleicao/{idEleicao}")
	public List<Candidato> obterLista(@PathVariable Integer idEleicao);
	
	@GetMapping(value = "/{idCandidato}/listar")
	public Candidato obterPorId(@PathVariable Integer idCandidato);
	
	@PostMapping(value = "/incluir")
	public void incluir(@RequestBody Candidato candidato);

	@DeleteMapping(value = "/{id}/excluir")
	public void excluir(@PathVariable Integer id);

}
