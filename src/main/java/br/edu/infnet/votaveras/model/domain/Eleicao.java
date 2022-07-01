package br.edu.infnet.votaveras.model.domain;

import java.time.LocalDateTime;
import java.util.List;

public class Eleicao {

	private int id;
	private LocalDateTime data;
	private String descricao;
	private List<Candidato> candidatos;
	private List<Voto> votos;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Eleicao() {
		this.setData(LocalDateTime.now());
	}

	public LocalDateTime getData() {
		return data;
	}

	public void setData(LocalDateTime data) {
		this.data = data;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public List<Candidato> getCandidatos() {
		return candidatos;
	}

	public void setCandidatos(List<Candidato> candidatos) {
		this.candidatos = candidatos;
	}

	public List<Voto> getVotos() {
		return votos;
	}

	public void setVotos(List<Voto> votos) {
		this.votos = votos;
	}

}
