package br.edu.infnet.votaveras.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import br.edu.infnet.votaveras.model.domain.Candidato;
import br.edu.infnet.votaveras.model.domain.service.CandidatoService;

@Controller
public class CandidatoController {
	
	@Autowired
	private CandidatoService candidatoService;

	@GetMapping(value = "/candidato")
	public String cadastro() {
		return "candidato/cadastro";
	}
	
	@GetMapping(value = "/candidatos")
	public String telaLista(Model model) {
		
		model.addAttribute("lista", candidatoService.obterLista());
		return "candidato/lista";
	}

	@PostMapping(value = "candidato/incluir")
	public String incluir(Candidato candidato, Model model) {
		
		model.addAttribute("lista", candidatoService.obterLista());
		
		candidatoService.incluir(candidato);
		return "redirect:/candidatos";
	}
	
	@GetMapping(value = "candidato/{id}/excluir")
	public String excluir(@PathVariable Integer id, Model model) {
		
		model.addAttribute("lista", candidatoService.obterLista());
		
		candidatoService.excluir(id);
		return "redirect:/candidatos";
	}

}
