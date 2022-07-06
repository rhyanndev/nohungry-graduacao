<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="a" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="produtoBean" class="br.com.projetowebjspdao.bean.ProdutoBean"/>
<%@ page import="br.com.projetowebjspdao.entity.Produto" %> 
<%@ page import="br.com.projetowebjspdao.bean.ProdutoBean" %> 


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
 			<a href="catalogo.jsp"> <img class="logo" alt="Logo" src="images/logo.png"></a>
 		</div>
  		 <a href="catalogo.jsp"><img class="home" alt="Usuario" src="images/voltar.png" style="top: 50px; left: 50px; position:absolute; width:40px; height:40px; border-radius: 50px;"></a>
		 
    </header>
     <h1 style="text-align: center;">MINHAS COMPRAS</h1>
      <%
		String[] allStrings = request.getSession().getAttribute("Usuario").toString().split(",");
     	 System.out.print(allStrings[0]);
		%>
     <input type="hidden" value="<%out.print(allStrings[0]);%>" name="idUser">
    <fieldset>
   		 <a:forEach var="produto" items="${produtoBean.addProdutoCarrinho()}">
						
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
  							<input class="btnCarrinho" type="submit" value="Adicionar no &#x1F6D2;" name="exit">
  						</div>
  				
  					</div>
  				</div>
			</div>
  		</a:forEach>
    </fieldset>
    	
   
  		
  		
  		
  	

    
</body>
</html>