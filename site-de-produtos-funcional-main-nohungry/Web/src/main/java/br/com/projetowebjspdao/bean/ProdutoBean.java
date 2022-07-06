package br.com.projetowebjspdao.bean;

import java.util.List;

import br.com.projetowebjspdao.dao.ProdutosDAO;
import br.com.projetowebjspdao.entity.Produto;
import br.com.projetowebjspdao.entity.Usuario;

public class ProdutoBean {
	static int comprador;
	Produto produto = new Produto();
	private ProdutosDAO produtosDao = new ProdutosDAO();
	
	public List<Produto> listarTodos(){
		return produtosDao.listaProduto();
	}
	public List<Produto> addProdutoCarrinho() {
		System.out.println("O cd que chegou foi "+comprador);
		return produtosDao.produtosCarrinho(comprador);
	}
	 
	
	public static int getComprador() {
		return comprador;
	}
	public static void setComprador(int comprador) {
		ProdutoBean.comprador = comprador;
	}
	
	

}
