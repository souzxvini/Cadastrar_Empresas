<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:url value="/alteraEmpresa" var="linkServletNovaEmpresa"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	
	<form action="${linkServletNovaEmpresa}" method="post">
	 
	 <label> Name: </label>
	 <input type= "text" name="nome" value="${empresa.nome }">
	 
	 <label> Data Abertura: </label>
	 <input type= "text" name="data" value="<fmt:formatDate value="${empresa.dataAbertura}" pattern="dd/MM/yyyy"/>" >
	 <input type="hidden" name="id" value="${empresa.id }">
	 <input type="submit"> 
	 
	</form>
		<a href="/gerenciador/listaEmpresas">Voltar</a></li> 
</body>
</html>