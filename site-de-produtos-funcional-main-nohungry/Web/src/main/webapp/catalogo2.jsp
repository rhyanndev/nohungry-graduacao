<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="br.com.projetowebjspdao.entity.Produto" %> 
<%@ page import="br.com.projetowebjspdao.bean.ProdutoBean" %> 
<%
	String enviar = request.getParameter("REGISTRAR");
	Produto produtos = new Produto();
	ProdutoBean pBean = new ProdutoBean();
	
	

 %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="nohungryCatalogo.css">
<script type="text/javascript" src="javascripts/ProdutoOpcoes.js"></script>
</head>
<body>


<header class="cabecalho">
 	<div class="logodiv">
 	
 		<a href="catalogo.jsp"> <img class="logo" alt="Logo" src="images/logo.png" style="top: -20px; position:absolute; margin-bottom:80px; width:125px; height:125px;"></a>
 	
 	</div>
  	<a href="painelUser.jsp"><img class="user" alt="Usuario" src="images/user.png" style="top: 10px; position:absolute; margin-bottom:80px; width:80px; height:80px; border: solid 1px black; border-radius: 50px;"></a>
	<div style="display: inline; float: right;">
		
		<a href="carrinho.jsp"> <img class="carrinho" alt="Logo" src="images/carrinho.png" style="margin-right:10px; margin-bottom:80px; width:80px; height:80px;border: solid 1px black; border-radius: 50px;"></a>
	
	</div>
	
	<p id="nomee"style="margin-left:90px; margin-top: 20px; color: red;"><%
		String[] allStrings = request.getSession().getAttribute("Usuario").toString().split(",");
		out.print(allStrings[1]);
	%></p>
	
	<img class="moeda" alt="moeda" src="images/moeda.png" style="width:30px; position:absolute; left:100px; bottom:10px;">
 	<p style="margin-left:130px; margin-top: 15px; color: green; font-size: 20px;">
 		<%out.print(allStrings[7]);%>
 	</p>
    </header>
    <div class="foodOptions">
    	<div class="imgContainer">
    		<div class="grid-img"><img alt="saudaveis" src="images/laranja.png" onclick="alterarImagem('produtoImagem', 'imgTemp', 'pn1', 'nomeTemp', 'desc', 'descTemp');"> </div>
    		<div class="grid-img"><img alt="saudaveis" src="images/pizza.png"></div>
    		<div class="grid-img"><img alt="saudaveis" src="images/frango-frito.png"></div>
    		<div class="grid-img"><img alt="saudaveis" src="images/bebida.png"></div>
    	
    	</div>
    	
    	
    	
    </div>
    <div class="grid-container">
  		<div class="grid-item">
  			<p class="produtoNome" id="pn1" style="margin-bottom:10px;"></p>
  			<div class="imgProduto" style="height:48%;">
  				<img id="produtoImagem" alt="produto" src="" style=" position: absolute;width:60%; height:43%;border-radius:20px 20px 0px 0px; margin-left:15%">
  			</div>
  			
  			<div class="descricaoProduto">
  				<p class="desc" id="desc"> </p>
  		
  			</div>
  			<div class="cardBottom">
  				<img class="estrela" alt="estrelas" src="images/star.png">
  				<p class="qntEstrelas" style="width:80px; position:absolute; left:75px; top:290px;font-size:25px; border-right:solid 1px black;"><% out.print(pBean.listarTodos().get(0).getAvaliacao());%></p>
  				<p class="preco" style="width:120px; position:absolute; left:180px; top:290px;font-size:25px;"><%out.print(pBean.listarTodos().get(0).getMoney());%></p>
  				<div class="footerCard">
  					<input class="btnCarrinho" type="submit" value="Add no Carrinho" name="exit">
  				</div>
  				
  			</div>
  		</div>
  		
  		<p id="imgTemp" style="position:absolute; display:none;"><%out.print(pBean.listarTodos().get(1).getUrlFoto());%></p>
  		<p id="nomeTemp" style="position:absolute; display:none;"><%out.print(pBean.listarTodos().get(1).getNome());%></p>
  		<p id="descTemp" style="position:absolute; display:none;"><%out.print(pBean.listarTodos().get(1));%></p>
  		
  		<div class="grid-item">2</div>
 		<div class="grid-item">3</div>
 		<div class="grid-item">4</div>
 		<div class="grid-item">5</div>
 		<div class="grid-item">6</div>
  		<div class="grid-item">7</div>
  		<div class="grid-item">8</div>
  		<div class="grid-item">9</div>
  	
	</div>
    
</body>
</html>