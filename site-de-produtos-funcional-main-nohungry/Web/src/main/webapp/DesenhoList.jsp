<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="a" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="produtoBean" class="br.com.projetowebjspdao.bean.ProdutoBean" />

<%
	String idExcluir = request.getParameter("idExcluir");
	String mensagem ="";
	
	if(idExcluir != null){
		
		out.println("<META HTTP-EQUIV=\"Refresh\""+"CONTENT=\"0; "+"URL =DesenhoList.jsp\">");
		
	}
%>

<script type="text/javascript">
//NAVEGAÇAO
function nova() {
	location.href = "DesenhoCreate.jsp";
}
function voltar() {
	location.href = "../index.jsp";
}
</script>
<!DOCTYPE html>
<html>
<head>
	
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Lista de Desenhos</title>
</head>
<body>
	<form method="POST">
		<div id="cadastro">
			<fieldset>
				<legend>Desenhos Cadastrados</legend>
				
					
					<!--PERGUNTAR AO PROFESSOR-->
					<a:forEach var="produto" items="${produtoBean.listarTodos()}">
						<tr>
							<!-- IMPRIMINDO O CONTEUDO DA LISTA NA ABELA -->
							<td><a:out value="${produto.nome}"/></td>
							<td><a:out value="${produto.descricao}"/></td>
							
						</tr>
					</a:forEach>
					
				
			</fieldset>
		</div>
		<hr/>
		<input type="button" value="Novo" onclick="nova()">
		<input type="button" value="Voltar" onclick="voltar()">
		</form>
</body>
</html>
