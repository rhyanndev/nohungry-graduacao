 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="br.com.projetowebjspdao.entity.Usuario" %> 
<%@ page import="br.com.projetowebjspdao.bean.UsuarioBean" %> 
<%
	String enviar = request.getParameter("LOGAR");
	Usuario usuario = new Usuario();
	UsuarioBean userBean = new UsuarioBean();
	
	if(enviar != null){
		//System.out.println("Passando pra o carrinho");
		usuario.setSenha(request.getParameter("password"));
		usuario.setEmail(request.getParameter("email"));
	
		
		
			
		if(userBean.logar(usuario) == true){
			out.print("<META HTTP-EQUIV=\"Refresh\" CONTENT=\"0; URL = catalogo.jsp\">");
		}else{
			System.out.println("Nao Logouu");
		}
		
		
		
	}

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>Login</title>
	<link rel="stylesheet" href="estilologin.css" >

	
</head>
<body>
	<header>
		<div class="cabecalho">
			<a href="index.jsp"> <img class="logo" alt="Logo" src="images/logo.png"></a>
			
		</div>		
	</header>
	

		

		<div class="Registro" >
		<div class="Form">
		
			<form method="POST" action="/Web/logar">
			<h1 class="Rapidinho"><p>Entre para ver as novidades <br> Temos muuuuuuitas delicias!</p></h1>
				<div>
					<p id="emailL">Seu email: </p>
				</div>
				
				<div style=" position: absolute; top: 420px; left: 50%; transform: translate(-50%, -50%);">
					<input id="Lemail" type="text" name="email" style="width: 400px; border: none; " placeholder="Digite seu email" autofocus>
				</div>


				<div>
					<p id="senhaL">Sua senha: </p>
				</div>
				<div style=" position: absolute; top: 500px; left: 50%; transform: translate(-50%, -50%);">
					<input id="Lsenha" type="password" name="password" style="width: 400px; border: none; " placeholder="Digite sua senha">
				</div>
				
				
				<p style=" position: absolute; top: 590px; left: 50%; transform: translate(-50%, -50%);">
					<input id="btn1" type="submit" value="LOGAR" name="LOGAR" >
					<input id="btn2" type="reset" value="LIMPAR CAMPOS">	
				</p>
				
				
	
	   		</form>
		
		</div>
		
	</div>
		<div class="fundo">
			<h2 class="basetext">Comidas gostosas para <br> <span>todos</span> os gostos!</h2>
			 <img class="imgChef" alt="chef" src="images/Chefsred.png"> 
		</div>
	
</body>
</html>