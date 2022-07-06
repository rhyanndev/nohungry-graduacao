package br.com.projetowebjspdao.bean;

import java.util.List;

import br.com.projetowebjspdao.dao.UsuarioDAO;
import br.com.projetowebjspdao.entity.Usuario;

public class UsuarioBean {

	Usuario usuario = new Usuario();
	private UsuarioDAO usuarioDao = new UsuarioDAO();
	
	public List<Usuario> listarTodos(){
		return usuarioDao.findAll();
	}
	public String criar(Usuario user) {
		
		return usuarioDao.registrarUsuario(user);
	}
	public boolean confirmarSenha(Usuario user) {
		if(user.senha.equals(user.confirmarSenha)) {
			return true;
		}	
		return false;	
	}
	public boolean logar(Usuario user) {
		return usuarioDao.validarLogin(user);
	}
	public void popularUsuario(Usuario user) {
		usuarioDao.popularUsuario(user);
	}

	
	

}
