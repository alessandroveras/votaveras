package br.edu.infnet.votaveras.model.domain.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.edu.infnet.votaveras.model.domain.Eleitor;
import br.edu.infnet.votaveras.model.repository.EleitorRepository;

@Service
public class EleitorService {
	
	@Autowired
	private EleitorRepository eleitorRepository;
	
	public void incluir(Eleitor eleitor) {
		eleitorRepository.save(eleitor);	
	}
	
	public void excluir(Integer id) {
		eleitorRepository.deleteById(id);
	}
	
	public List<Eleitor> obterLista() {
		return (List<Eleitor>) eleitorRepository.findAll();
	}
	
	public Eleitor obterPorId(Integer id) {
		return eleitorRepository.findById(id).orElse(null);
	}

}
