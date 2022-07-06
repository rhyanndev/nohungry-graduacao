<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="a" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="produtoBean" class="br.com.projetowebjspdao.bean.ProdutoBean"/>
<%@ page import="br.com.projetowebjspdao.entity.Produto" %> 
<%@ page import="br.com.projetowebjspdao.bean.ProdutoBean" %> 
<%
	
	
	

 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Produtos</title>
<link rel="stylesheet" href="nohungryCatalogo.css">
<script type="text/javascript" src="javascripts/ProdutoOpcoes.js"></script>
</head>
<body>


<header class="cabecalho">
 	<div class="logodiv">
 
 	<img class="logo" alt="Logo" src="images/logo.png">
 	
 	</div>
  	 <a href="painelUser.jsp"><img class="user" alt="Usuario" src="images/user3.png" style="top:10px; left: 10px; position:absolute; margin-bottom:80px; width:80px; height:80px; border-radius: 50px;"></a>
	<div style="display: inline; float: right;">
		
		 <a href="carrinho.jsp"> <img class="carrinho" alt="Logo" src="images/carrinho-de-compras3.png" style="margin-right: 70px; margin-bottom:80px; margin-top: 50px; width:40px; height:40px;"></a> 
	
	</div>
	
	 <p id="nomee"style="position:absolute; margin-left:110px; margin-top: 40px; font-size:20px; color: red;"> <%
		String[] allStrings = request.getSession().getAttribute("Usuario").toString().split(",");
		out.print(allStrings[1]);
	%></p>
	
	<img class="moeda" alt="moeda" src="images/moeda1real.png" style="width:35px;  position:absolute; left:100px; bottom:10px;">
 	<p style="margin-left:45px; position:absolute; left:100px; bottom:10px; color:green ; font-size: 20px;">
 		 <%out.print(allStrings[7]);%>
 	</p>
    </header>
    <div class="foodOptions">
    	<div class="imgContainer">
    		<div class="grid-img"><img alt="saudaveis" src="images/laranja.png" > </div>
    		<div class="grid-img"><img alt="saudaveis" src="images/pizza.png"></div>
    		<div class="grid-img"><img alt="saudaveis" src="images/frango-frito.png"></div>
    		<div class="grid-img"><img alt="saudaveis" src="images/bebida.png"></div>
    	
    	</div>
    	
    	
    	
    </div>
    <fieldset>
   		 <a:forEach var="produto" items="${produtoBean.listarTodos()}">
						
			<div class="grid-container">
				<div class="grid-item">
  					<p class="produtoNome" style="margin-bottom:10px;"><a:out value="${produto.nome}"/></p>
  					<div class="imgProduto" style="height:48%;">
  						<img id="produtoImagem" alt="produto" src="<a:out value="${produto.urlFoto}"/>"  style=" position: absolute;width:60%; height:43%; border-radius:20px 20px 0px 0px; margin-left:15%">
  					</div>
  			
  					<div class="descricaoProduto">
  						<p class="desc" id="desc"><a:out value="${produto.descricao}"/> </p>
  					</div>
  					<div class="cardBottom">
  						<img class="estrela" alt="estrelas" src="images/star.png">
  						<p class="qntEstrelas" style="position:absolute; width:80px; margin-left:60px; top:330px;font-size:25px; border-right:solid 1px black;"><a:out value="${produto.avaliacao}"/></p>
  						<p class="preco" style="position:absolute;width:120px; margin-left:180px; top:330px;font-size:25px;"><a:out value="${produto.money}"/></p>
  						<div class="footerCard">
  						<form method="POST" action="/Web/catalogo">
  						<input type="hidden" value="<%out.print(allStrings[0]);%>" name="idUser">
  							<input type="hidden" value="${produto.id}" name="idProd">
  							<input class="btnCarrinho" type="submit" value="Adicionar no &#x1F6D2;" name="add" >
  						</form>
  							
  						</div>
  				
  					</div>
  				</div>
			</div>
  		</a:forEach>
    </fieldset>
    	
   
  		
  		
  		
  	

    
</body>
</html>