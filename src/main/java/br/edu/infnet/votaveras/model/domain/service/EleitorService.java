package br.edu.infnet.votaveras.model.domain.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.edu.infnet.votaveras.clients.EleitorClient;
import br.edu.infnet.votaveras.model.domain.Eleitor;

@Service
public class EleitorService {

	@Autowired
	private EleitorClient eleitorClient;

	public Eleitor obterPorId(Integer id) {
		return eleitorClient.obterPorId(id);
	}

	public List<Eleitor> obterLista() {
		return eleitorClient.obterLista();
	}

	public void incluir(Eleitor eleitor) {
		eleitorClient.incluir(eleitor);
	}

	public void excluir(Integer id) {
		eleitorClient.excluir(id);
	}

}
