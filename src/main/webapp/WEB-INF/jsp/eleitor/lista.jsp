<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>AppMIT</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
</head>
<body>

	<c:import url="/WEB-INF/jsp/menu.jsp"/>

	<div class="container mt-3">
	  <h2>Cadastramento de Eleitores</h2>

	  <c:if test="${not empty mensagem}">
		<div class="alert alert-success">
		  <strong>Confirmação!</strong> ${mensagem}
		</div>	  
	  </c:if>

	  <form action="/eleitor" method="get">
	    <button type="submit" class="btn btn-primary">Novo</button>
	  </form>
	  
	  <hr>
	<c:if test="${not empty lista}">		
		<h2>Total de Eleitores: ${lista.size()}</h2>
		  
		<table class="table table-striped">
		    <thead>
		      <tr>
		        <th>Codigo</th>
		        <th>Nome</th>
		        <th>Email</th>
		        <th>Telefone</th>
		        <th>Token</th>
		        <th>Votos</th>
		        <th></th>
		      </tr>
		    </thead>
		    <tbody>
		      <c:forEach var="eleitor" items="${lista}">
			      <tr>
			        <td>${eleitor.codigo}</td>
			        <td>${eleitor.nome}</td>
			        <td>${eleitor.email}</td>
			        <td>${eleitor.telefone}</td>
			        <td>${eleitor.token}</td>
			        <td>${eleitor.votos.size()}</td>
		        	<td><a href="/eleitor/${eleitor.id}/excluir">Excluir</a></td>
			      </tr>
		      </c:forEach>		      
		    </tbody>
	  	</table>
    </c:if>	  	  

	<c:if test="${empty lista}">		
	  <h2>Não existem eleitores cadastrados!!!</h2>
	</c:if>

	</div>
</body>
</html>