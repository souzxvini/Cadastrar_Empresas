<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:url value="/entrada" var="linkEntradaServlet"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<c:import url="logout-parcial.jsp"/>
	
	Usuario Logado: ${usuarioLogado.login }
		<br>
		<br>
		<br>
	
	<form action="${linkEntradaServlet}" method="post">
	 
	 <label> Name: </label>
	 <input type= "text" name="nome" value="${empresa.nome }">
	 
	 <label> Data Abertura: </label>
	 <input type= "text" name="data" value="<fmt:formatDate value="${empresa.dataAbertura}" pattern="dd/MM/yyyy"/>" >
	 <input type="hidden" name="id" value="${empresa.id }">
	  <input type="hidden" name="acao" value="AlteraEmpresa">
	 <input type="submit"> 
	 
	</form>
	<br>
		<br>
		<br>
		<a href="/gerenciador/entrada?acao=ListaEmpresas">Voltar</a>
</body>
</html>