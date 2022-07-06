package br.com.projetowebjspdao.entity;

import java.math.BigDecimal;

public class Carrinho {
	public Integer id;
	public String nome;
	public String tipo;
	public String descricao;
	public String money;
	public String urlFoto;
	public float avaliacao;
	public int qntVotos;
	
	public Carrinho() {
		// TODO Auto-generated constructor stub
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getTipo() {
		return tipo;
	}
	public void setTipo(String tipo) {
		this.tipo = tipo;
	}
	public String getDescricao() {
		return descricao;
	}
	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}
	public String getMoney() {
		return money;
	}
	public void setMoney(String string) {
		this.money = string;
	}
	public String getUrlFoto() {
		return urlFoto;
	}
	public void setUrlFoto(String urlFoto) {
		this.urlFoto = urlFoto;
	}
	public float getAvaliacao() {
		return avaliacao;
	}
	public void setAvaliacao(float avaliacao) {
		this.avaliacao = avaliacao;
	}
	public int getQntVotos() {
		return qntVotos;
	}
	public void setQntVotos(int qntVotos) {
		this.qntVotos = qntVotos;
	}
	

}
