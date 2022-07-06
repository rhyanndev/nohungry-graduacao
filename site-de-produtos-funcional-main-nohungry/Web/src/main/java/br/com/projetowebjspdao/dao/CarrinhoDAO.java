package br.com.projetowebjspdao.dao;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import br.com.projetowebjspdao.entity.Produto;
import br.com.projetowebjspdao.entity.Usuario;
import br.com.projetowebjspdao.utils.Conexao;

public class CarrinhoDAO {
	private final Conexao con = new Conexao();
	private String msgExecucao;
	public int total = 0;
	
	

	
	public String adicionarCarrinho(int cdProd, int cdUser) {
		
		String sql = "INSERT INTO carrinho(codigo_user, codigo_produto)"
				+ "VALUES('" +  cdUser+ "', "
				+ "'"+ cdProd+"')";
		
		con.executarAtualizacao(sql);
		msgExecucao = "Cadastro"+con.getMensagem();
		return msgExecucao;
	}
	

}
