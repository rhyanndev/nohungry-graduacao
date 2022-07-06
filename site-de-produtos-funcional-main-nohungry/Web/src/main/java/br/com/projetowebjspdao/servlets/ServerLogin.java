package br.com.projetowebjspdao.servlets;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import br.com.projetowebjspdao.bean.UsuarioBean;
import br.com.projetowebjspdao.entity.Usuario;

/**
 * Servlet implementation class ServerLogin
 */
@WebServlet("/logar")
public class ServerLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServerLogin() {
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
		String enviar = request.getParameter("LOGAR");
		//Usuario usuario = new Usuario();
		UsuarioBean userBean = new UsuarioBean();
		String nome = request.getParameter("nome");
		Usuario usuario = new Usuario();

		
	    
		
		if(enviar != null){
		
			usuario.setSenha(request.getParameter("password"));
			usuario.setEmail(request.getParameter("email"));
			
			
			
				
			if(userBean.logar(usuario) == true){
				userBean.popularUsuario(usuario);
				request.getSession().setAttribute("Usuario", usuario);
				
				RequestDispatcher dispatcher = request.getRequestDispatcher("catalogo.jsp");
				dispatcher.forward(request, response);
			}else{
				System.out.println("Nao Logouu");
			}
			
			
			
		}
	}

}
