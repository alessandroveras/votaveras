package br.edu.infnet.votaveras.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import br.edu.infnet.votaveras.model.domain.Voto;
import br.edu.infnet.votaveras.model.domain.service.VotoService;


@Controller
public class VotoController {

	@Autowired
	private VotoService votoService;

	@GetMapping(value = "/voto")
	public String cadastro() {
		return "voto/cadastro";
	}

	@GetMapping(value = "/votos")
	public String telaLista(Model model) {
		
		model.addAttribute("lista", votoService.obterLista());
		return "voto/lista";
	}


	@PostMapping(value = "voto/incluir")
	public String incluir(Voto voto, Model model) {
		
		model.addAttribute("lista", votoService.obterLista());
		
		votoService.incluir(voto);
		return "redirect:/votos";
	}

	@GetMapping(value = "voto/{id}/excluir")
	public String excluir(@PathVariable Integer id, Model model) {
		
		model.addAttribute("lista", votoService.obterLista());
		
		votoService.excluir(id);
		return "redirect:/votos";
	}

}
