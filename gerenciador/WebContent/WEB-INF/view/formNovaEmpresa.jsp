<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url value="/entrada" var="linkEntradaServlet" />
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<c:import url="logout-parcial.jsp" />

	<form action="${linkEntradaServlet}" method="post">

		Usuario Logado: ${usuarioLogado.login } <br> <br> <br>

		<label> Name: </label> <input type="text" name="nome"> <label>
			Data Abertura: </label> <input type="text" name="data"> <input
			type="submit">

		<!-- Super importante	 -->
		<input type="hidden" name="acao" value="NovaEmpresa"> <br>
		<br> <br> <a href="/gerenciador/entrada?acao=ListaEmpresas">voltar</a>

	</form>
</body>
</html>