package br.edu.infnet.votaveras.model.domain.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.edu.infnet.votaveras.model.domain.Voto;

@Service
public class VotoService {
	
	@Autowired
	private br.edu.infnet.votaveras.clients.VotoClient votoClient;
	
	public Voto obterPorId(Integer id) {
		return votoClient.obterPorId(id);
	}
	
	public List<Voto> obterLista() {
		return votoClient.obterLista();
	}
	
	public void incluir(Voto voto) {
		votoClient.incluir(voto);	
	}
	
	public void excluir(Integer id) {
		votoClient.excluir(id);
	}
	

	


}
