<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="br.com.projetowebjspdao.entity.Usuario" %> 
<%@ page import="br.com.projetowebjspdao.bean.UsuarioBean" %> 
<%
	String enviar = request.getParameter("Registrar");
	Usuario usuario = new Usuario();
	UsuarioBean userBean = new UsuarioBean();
	if(enviar != null){
		
		usuario.setNome(request.getParameter("nome"));
		usuario.setSenha(request.getParameter("password"));
		usuario.setConfirmarSenha(request.getParameter("passwordConfirmed"));
		usuario.setEmail(request.getParameter("email"));
		usuario.setUf(request.getParameter("uf"));
		usuario.setRua(request.getParameter("rua"));
		usuario.setTelefone(request.getParameter("telefone"));
		
		if(userBean.confirmarSenha(usuario) == true){
			
			userBean.criar(usuario);
		}
		
		
		
	}

%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>Criar conta</title>
	<link rel="stylesheet" href="estiloregistro.css" >
</head>
<body>
	<header>
		<div class="cabecalho">
			<div class="logodiv">
			<a href="index.jsp"> <img class="logo" alt="Logo" src="images/logo.png"></a>
		</div>
		</div>
		
	</header>
	
	<div class="Registro">
			<h1>Faça o seu cadastro já!</h1>
					<p class="Rapidinho"> é RAPIDINHO!</p>

		<div class="Form">
		
			<form method="POST">
				<div style="display:block; margin-top:50px;">
					<p id="nome" >Nome: <input id="Inome" type="text" name="nome"placeholder="Digite seu nome"> </p>
					<p id="email">Email: <input id="Iemail" type="text" name="email"placeholder="Digite seu endereÃ§o de email. Ex: email@example.com"></p>
					<p id="telefone">Fone: <input id="Itelefone" type="text" name="telefone"placeholder="Digite seu nÃºmero de telefone"></p>

				<p id="uf">UF:

<input id="Iuf" type="text" minlength="2" maxlength="2" name="uf">


						<p id="rua" >Endereço: <input id="Irua" type="text" name="rua"placeholder="Digite seu EndereÃ§o"></p>
						<p id="senha" >Senha: <input id="Isenha" type="password" name="password" placeholder="Digite sua senha"></p>
						<p id="senha2" >Confirmação de Senha: <input id="Isenha2" type="password" name="passwordConfirmed" placeholder="Digite a mesma senha"></p>
			
				<div class="sexo" style="position: abosolute; top:300px; display:inline-block; margin-left: 780px;">
						<p id = "homems">M</p><input  id="Ihomem" type = "checkbox" id = "homem" name = "homem" value = "HOMEM">
						<p id = "mulhers">F</p><input  id="Imulher" type = "checkbox" id = "mulher" name = "mulher" value = "MULHER">
						
				</div>

			</div>
				<div class="FormDown">
					
						 <input id="registrar" type="submit" value="Cadastrar" name="Registrar">
						<input type="reset" id="limparcampos"value="Limpar Campos">
					
				</div>
				
	
	   		</form>
		
		</div>
		
	</div>
</div>
<div class="fundo">
	<h2 class="basetext">Produtos de <br> <span>Qualidade!</span> </h2>
	<img class="shine" alt="brilho" src="images/clean2.png" style="width: 150px; height: 150px; position: relative;
	left: 680px;
	bottom: 280px;
	margin: 0px;
	padding: 0px;">
	 <img class="imgChef" alt="chef" src="images/take-away2.png"> 
</div>
		
	</div>

</body>
</html>