package br.com.projetowebjspdao.bean;

import java.util.List;

import br.com.projetowebjspdao.dao.CarrinhoDAO;
import br.com.projetowebjspdao.entity.Carrinho;
import br.com.projetowebjspdao.entity.Produto;

public class CarrinhoBean {

	Carrinho carrinho = new Carrinho();
	private CarrinhoDAO carrinhoDao = new CarrinhoDAO();
	
	public void add(int cdProd, int cdUser){
		carrinhoDao.adicionarCarrinho(cdProd, cdUser);
	}
	
	 

	
	

}
