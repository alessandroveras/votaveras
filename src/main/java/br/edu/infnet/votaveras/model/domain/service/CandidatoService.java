package br.edu.infnet.votaveras.model.domain.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.edu.infnet.votaveras.clients.CandidatoClient;
import br.edu.infnet.votaveras.model.domain.Candidato;
import br.edu.infnet.votaveras.model.domain.Eleicao;

@Service
public class CandidatoService {

	@Autowired
	private CandidatoClient candidatoClient;
	
	public Candidato obterPorId(Integer id) {
		return candidatoClient.obterPorId(id);
	}
	
	public List<Candidato> obterLista() {
		return candidatoClient.obterLista();
	}

	public List<Candidato> obterLista(Eleicao eleicao) {
		return (candidatoClient.obterLista(eleicao.getId()));
	}

	public void incluir(Candidato candidato) {
		candidatoClient.incluir(candidato);
	}

	public void excluir(Integer id) {
		candidatoClient.excluir(id);
	}


	


}
