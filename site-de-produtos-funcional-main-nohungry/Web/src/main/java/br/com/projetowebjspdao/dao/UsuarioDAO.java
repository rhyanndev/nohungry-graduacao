package br.com.projetowebjspdao.dao;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import br.com.projetowebjspdao.bean.ProdutoBean;
import br.com.projetowebjspdao.entity.Usuario;
import br.com.projetowebjspdao.utils.Conexao;

public class UsuarioDAO {
	private final Conexao con = new Conexao();
	private String msgExecucao;
	public int total = 0;
	public int contarUsuario() {
		total = 0;
		try {
			String sql = "SELECT count(user_codigo) FROM usuarios GROUP BY user_codigo";
			con.conectar();
			ResultSet rs = con.executarConsulta(sql);
			
			while(rs.next()) {
				total = rs.getInt(1);
			}
			rs.close();
			rs = null;
			con.desconectar();		
		}catch(Exception e) {
			con.desconectar();
			System.out.print("Error Count: "+ e);
			total = 0;
		}
		return total;
	}
	public List<Usuario> findAll(){
		List<Usuario> usuarioList = new ArrayList<>();
		Usuario usuario;
		
		try {
			String sql = "SELECT * FROM usuarios";
			con.conectar();
			ResultSet rs = con.executarConsulta(sql);
			
			while(rs.next()) {
				usuario = new Usuario();
				//PREPARANDO CIDADE PARA SER INSERIDO NA LISTA
				
				//ADICIONANDO A LISTA DE DESENHOS
				usuarioList.add(usuario);
			}
			rs.close();
			rs = null;
			con.desconectar();
			System.out.println("------------------------------");		
		}catch(Exception e) {
			con.desconectar();
			System.out.print("Error List: "+ e);
		}
		return usuarioList;
	}
		
	//METODO PARA DELETAR UM DESENHO
	
	public String delete(Integer codigo) {
		String sql = "DELETE FROM usuarios WHERE user_id = "+ codigo;
		con.executarAtualizacao(sql);
		msgExecucao = "Exlclusão"+ con.getMensagem();
		return msgExecucao;
	}
	//METODO PARA INSERIR UM DESENHO
	public String registrarUsuario(Usuario usuario) {
		System.out.println("Criou uma vez");
		String sql = "INSERT INTO usuarios(user_name, user_senha, user_email, user_uf, user_rua, user_telefone, user_dinheiro)"
				+ "VALUES('" +  usuario.getNome()+ "', "
				+ "'"+  usuario.getSenha() +"',"
				+ "'"+  usuario.getEmail() +"',"
				+ "'"+  usuario.getUf() +"',"
				+ "'"+  usuario.getRua() +"',"
				+ "'"+  usuario.getTelefone()+ "',"
				+ "50)";
		
		con.executarAtualizacao(sql);
		msgExecucao = "Cadastro"+con.getMensagem();
		return msgExecucao;
	}
	public void popularUsuario(Usuario usuario) {
		try {
			System.out.println(usuario.getId());
			String sql = "SELECT * FROM usuarios WHERE user_codigo = "+ usuario.getId();
			con.conectar();
			ResultSet rs = con.executarConsulta(sql);
			
			while(rs.next()) {
				usuario.setId(rs.getInt(1));
				usuario.setNome(rs.getString(2));
				usuario.setEmail(rs.getString(4));
				usuario.setSenha(rs.getString(3));
				usuario.setUf(rs.getString(5));
				usuario.setRua(rs.getString(6));
				usuario.setTelefone(rs.getString(7));
				usuario.setMoedas(rs.getString(9));
				
				System.out.println("População sucedida");
			}
			rs.close();
			rs = null;
			con.desconectar();
		}catch(Exception e) {
			con.desconectar();
			System.out.print("Error ao popular: "+ e);
		}
	}
	public boolean validarLogin(Usuario usuario) {
		contarUsuario();
		try {
			String sql = "SELECT * FROM usuarios";
			con.conectar();
			ResultSet rs = con.executarConsulta(sql);
			int tempId = 0;
			while(rs.next()) {
				
				if(rs.getString(3).equals(usuario.getSenha())) {
					if(rs.getString(4).equals(usuario.getEmail())) {
						System.out.println("Logando com o usuario(a): "+rs.getString(2));
						usuario.setId(rs.getInt(1));
						ProdutoBean.setComprador(usuario.getId());
						rs.close();
						rs = null;
						con.desconectar();
						return true;
					}
					
				}
			}
			rs.close();
			rs = null;
			con.desconectar();		
		}catch(Exception e) {
			con.desconectar();
			System.out.print("Error Validação de login: "+ e);
		}
		return false;
		
	}
	//METODO PRA ATUALIZAR DESENHO
	/**
	public String update(Usuario usuario) {
		String sql = "UPDATE desenho SET des_descricao = '"
				+ usuario.getDescricao().toUpperCase() + "', "+"des_faixa_etaria = '"
				+ usuario.getFaixa().toUpperCase() + "' WHERE des_codigo ="+ usuario.getCodigo();
		con.executarAtualizacao(sql);
		msgExecucao = "Atualização "+ con.getMensagem();
		return msgExecucao;
				
	}**/

}
