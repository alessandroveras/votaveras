package br.edu.infnet.votaveras.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import br.edu.infnet.votaveras.model.domain.Candidato;
import br.edu.infnet.votaveras.model.domain.Eleicao;
import br.edu.infnet.votaveras.model.domain.service.CandidatoService;
import br.edu.infnet.votaveras.model.domain.service.EleicaoService;

@Controller
public class CandidatoController {

	@Autowired
	private CandidatoService candidatoService;

	@Autowired
	private EleicaoService eleicaoService;
	
	@GetMapping(value = "/candidato")
	public String telaCadastro(Model model) {

		model.addAttribute("eleicoes", eleicaoService.obterLista());
		return "candidato/cadastro";
	}

	@GetMapping(value = "/candidatos")
	public String telaLista(Model model) {
		
		model.addAttribute("candidatos", candidatoService.obterLista());

		return "candidato/lista";
	}

	@PostMapping(value = "candidato/incluir")
	public String incluir(Candidato candidato, Model model, @RequestParam String idEleicao) {

		model.addAttribute("candidatos", candidatoService.obterLista());

		int meuId = Integer.valueOf(idEleicao);
		Eleicao eleicao = eleicaoService.obterPorId(meuId);
		candidato.setEleicao(eleicao);
		
		candidatoService.incluir(candidato);
		return "redirect:/candidatos";
	}

	@GetMapping(value = "candidato/{id}/excluir")
	public String excluir(@PathVariable Integer id, Model model) {

		model.addAttribute("candidatos", candidatoService.obterLista());

		candidatoService.excluir(id);
		return "redirect:/candidatos";
	}

}
