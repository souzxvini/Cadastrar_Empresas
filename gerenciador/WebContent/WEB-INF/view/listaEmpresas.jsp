
<%@ page import="java.util.List,br.com.alura.gerenciador.modelo.Empresa"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
	<head>
	<meta charset="ISO-8859-1">
		<body>
		<c:import url="logout-parcial.jsp"/>
		
		Usuario Logado: ${usuarioLogado.login }
		<br>
		<br>
		<br>
		
		<c:if test= "${not empty empresa}">
            Empresa ${ empresa } cadastrada com sucesso!
        </c:if>
   
		Lista de empresas: <br/>
		
		<ul>
		
			<c:forEach items="${empresas}" var = "empresa">
			
				<li>
					${empresa.nome} - <fmt:formatDate value="${empresa.dataAbertura}" pattern="dd/MM/yyyy"/> 
				 	<a href="/gerenciador/entrada?acao=MostraEmpresa&id=${empresa.id }">editar</a>
				 	<a href="/gerenciador/entrada?acao=RemoveEmpresa&id=${empresa.id }">remover </a>
					
				</li>
			
			</c:forEach>	
		</ul>
			<a href="/gerenciador/entrada?acao=NovaEmpresaForm">Adicionar</a></li>
		</body>
	</head>
</html>