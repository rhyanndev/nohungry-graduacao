package br.com.projetowebjspdao.dao;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import br.com.projetowebjspdao.entity.Produto;
import br.com.projetowebjspdao.entity.Usuario;
import br.com.projetowebjspdao.utils.Conexao;

public class ProdutosDAO {
	private final Conexao con = new Conexao();
	private String msgExecucao;
	public int total = 0;
	public int contarProdutos() {
		total = 0;
		try {
			String sql = "SELECT count(produto_codigo) FROM usuarios GROUP BY produto_codigo";
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
	public List<Produto> listaProduto(){
		List<Produto> produtoList = new ArrayList<>();
		Produto produto;
		
		try {
			String sql = "SELECT * FROM produtos  ";
			con.conectar();
			ResultSet rs = con.executarConsulta(sql);
			
			while(rs.next()) {
				produto = new Produto();
				produto.setId(rs.getInt(1));
				produto.setNome(rs.getString(2));
				produto.setTipo(rs.getString(3));
				produto.setDescricao(rs.getString(4));
				produto.setMoney(rs.getString(5));
				produto.setUrlFoto(rs.getString(6));
				produto.setAvaliacao(rs.getFloat(7));
				produto.setQntVotos(rs.getInt(8));
				
				produtoList.add(produto);
			}
			rs.close();
			rs = null;
			con.desconectar();
					
		}catch(Exception e) {
			con.desconectar();
			System.out.print("Error Produto Lista: "+ e);
		}
		return produtoList;
	}
	public List<Produto> produtosCarrinho(int cdUser){
		List<Produto> produtoList = new ArrayList<>();
		Produto produto;
		
		try {
			String sql = "SELECT produtos.* from produtos, usuarios, carrinho "
					+ "where produtos.produto_codigo = carrinho.codigo_produto "
					+ "and carrinho.codigo_user = usuarios.user_codigo "
					+ "and usuarios.user_codigo ="+cdUser;
			
			con.conectar();
			ResultSet rs = con.executarConsulta(sql);
			
			while(rs.next()) {
				produto = new Produto();
				//PREPARANDO CIDADE PARA SER INSERIDO NA LISTA
				produto.setId(rs.getInt(1));
				produto.setNome(rs.getString(2));
				produto.setTipo(rs.getString(3));
				produto.setDescricao(rs.getString(4));
				produto.setMoney(rs.getString(5));
				produto.setUrlFoto(rs.getString(6));
				produto.setAvaliacao(rs.getFloat(7));
				produto.setQntVotos(rs.getInt(8));
				
				produtoList.add(produto);
				//ADICIONANDO A LISTA DE DESENHOS
			}
			rs.close();
			rs = null;
			con.desconectar();
			System.out.println("------------------------------");		
		}catch(Exception e) {
			con.desconectar();
			System.out.print("Error List: "+ e);
		}
		return produtoList;
	}
	

}
