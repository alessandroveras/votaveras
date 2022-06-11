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
import br.edu.infnet.votaveras.model.domain.Eleitor;
import br.edu.infnet.votaveras.model.domain.Voto;
import br.edu.infnet.votaveras.model.domain.service.CandidatoService;
import br.edu.infnet.votaveras.model.domain.service.EleicaoService;
import br.edu.infnet.votaveras.model.domain.service.EleitorService;
import br.edu.infnet.votaveras.model.domain.service.VotoService;


@Controller
public class VotoController {

	@Autowired
	private VotoService votoService;
	
	@Autowired
	private CandidatoService candidatoService;

	@Autowired
	private EleicaoService eleicaoService;
	
	@Autowired
	private EleitorService eleitorService;

	@GetMapping(value = "/voto")
	public String telnaCadastro(Model model) {
		
		model.addAttribute("eleicoes", eleicaoService.obterLista());
		model.addAttribute("candidatos", candidatoService.obterLista());
		model.addAttribute("eleitores", eleitorService.obterLista());
		
		return "voto/cadastro";
	}

	@GetMapping(value = "/votos")
	public String telaLista(Model model) {
		
		model.addAttribute("votos", votoService.obterLista());
		
		return "voto/lista";
	}


	@PostMapping(value = "voto/incluir")
	public String incluir(Voto voto, Model model, @RequestParam String idEleicao, @RequestParam String idEleitor, @RequestParam String idCandidato) {
		
		model.addAttribute("votos", votoService.obterLista());
		
		int  id = Integer.valueOf(idEleitor);
		Eleitor eleitor = eleitorService.obterPorId(id);
		voto.setEleitor(eleitor);
		
		id = Integer.valueOf(idEleicao);
		Eleicao eleicao = eleicaoService.obterPorId(id);
		voto.setEleicao(eleicao);
		
		id = Integer.valueOf(idCandidato);
		Candidato candidato = candidatoService.obterPorId(id);
		voto.setCandidato(candidato);
		
		votoService.incluir(voto);
		return "redirect:/votos";
	}

	@GetMapping(value = "voto/{id}/excluir")
	public String excluir(@PathVariable Integer id, Model model) {
		
		model.addAttribute("votos", votoService.obterLista());
		
		votoService.excluir(id);
		return "redirect:/votos";
	}

}
