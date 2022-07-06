<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="br.com.projetowebjspdao.entity.Usuario" %> 
<%@ page import="br.com.projetowebjspdao.bean.UsuarioBean" %> 


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Painel do Usuário</title>
<link rel="stylesheet" href="estilopainel.css">
</head>
<body>
	<header class="cabecalho">
 		<div class="logodiv">
 			<a href="catalogo.jsp"> <img class="logo" alt="Logo" src="images/logo.png"></a>
 		</div>
  		 <a href="catalogo.jsp"><img class="home" alt="Usuario" src="images/voltar.png" style="top: 50px; left: 50px; position:absolute; width:40px; height:40px; border-radius: 50px;"></a>
		  
	 <a href="carrinho.jsp"> <img class="carrinho" alt="Carrinho" src="images/carrinho-de-compras3.png" style="margin-left: 1240px; margin-bottom:80px; margin-top: 50px; width:40px; height:40px;"></a>

    </header>
	<div class="infoUser"> 
    
    	<center ><img id="userImg" alt="imagem de usuario" src="images/user2.png" style="width: 200px;"></center>
    	
    	<div class="dadosPessoais" >
   		<p class="campos">Nome: <%
			String[] allStrings = request.getSession().getAttribute("Usuario").toString().split(",");
			out.print(allStrings[1]);
		%></p>
		<p class="campos" >Email: <%
			
			out.print(allStrings[3]);
		%></p>
		<p class="campos">UF: <%
			
			out.print(allStrings[4]);
		%></p>
		<p class="campos">Rua: <%
			
			out.print(allStrings[5]);
		%></p>
		<p class="campos">Telefone: <%
		
			out.print(allStrings[6]);
		%></p>
    </div>
	<form method="POST" action="/WebProject/usuario" class="formdowm">
		<center><input id="btn" type="submit" value="Editar" name="exit"></center>
 </form>
    </div>
    

    
</body>
</html>