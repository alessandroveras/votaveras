package br.edu.infnet.votaveras.model.domain.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.edu.infnet.votaveras.clients.EleicaoClient;
import br.edu.infnet.votaveras.model.domain.Eleicao;

@Service
public class EleicaoService {

	@Autowired
	private EleicaoClient eleicaoClient;

	public Eleicao obterPorId(Integer id) {
		return eleicaoClient.obterPorId(id);
	}

	public List<Eleicao> obterLista() {
		return eleicaoClient.obterLista();
	}

	public void incluir(Eleicao eleicao) {
		eleicaoClient.incluir(eleicao);
	}

	public void excluir(Integer id) {
		eleicaoClient.excluir(id);
	}

}
