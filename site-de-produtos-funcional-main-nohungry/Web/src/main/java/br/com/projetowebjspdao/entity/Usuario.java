package br.com.projetowebjspdao.entity;

public class Usuario {
	
	public Integer id;
	public String nome;
	public String senha;
	public String confirmarSenha;
	public String email;
	public String uf;
	public String rua;
	public String telefone;
	public String foto;
	public String moedas;
	
	
	@Override
	public String toString() {
		return id+","+nome+","+senha+","+email+","+uf+","+rua+","+telefone+","+moedas;
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
	public String getSenha() {
		return senha;
	}
	public void setSenha(String senha) {
		this.senha = senha;
	}
	public String getEmail() {
		return email;
	}
	
	public String getConfirmarSenha() {
		return confirmarSenha;
	}
	public void setConfirmarSenha(String confirmarSenha) {
		this.confirmarSenha = confirmarSenha;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getUf() {
		return uf;
	}
	public void setUf(String uf) {
		this.uf = uf;
	}
	public String getRua() {
		return rua;
	}
	public void setRua(String rua) {
		this.rua = rua;
	}
	public String getTelefone() {
		return telefone;
	}
	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}
	public String getFoto() {
		return foto;
	}
	public void setFoto(String foto) {
		this.foto = foto;
	}
	public String getMoedas() {
		return moedas;
	}
	public void setMoedas(String moedas) {
		this.moedas = moedas;
	}
	
	

}
