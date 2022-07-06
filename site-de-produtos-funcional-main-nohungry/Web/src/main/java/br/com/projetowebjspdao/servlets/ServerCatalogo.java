package br.com.projetowebjspdao.servlets;

import java.io.IOException;

import br.com.projetowebjspdao.bean.CarrinhoBean;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ServerCatalogo
 */
@WebServlet("/catalogo")
public class ServerCatalogo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServerCatalogo() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("Passando pra o carrinho");
		String enviar = request.getParameter("add");
		
		if(enviar != null){
			CarrinhoBean cBean = new CarrinhoBean();
			
			String cdString = request.getParameter("idProd");
			int cdProd = Integer.parseInt(cdString);
			
			cdString = request.getParameter("idUser");
			int cdUser = Integer.parseInt(cdString);
			
			System.out.println(cdProd);
			System.out.println(cdUser);
			
			
			cBean.add(cdProd, cdUser);
			
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("catalogo.jsp");
			dispatcher.forward(request, response);
		}
	}

}
