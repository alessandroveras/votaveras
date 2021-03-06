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
	  <h2>Cadastramento de Candidatos</h2>

	  <c:if test="${not empty mensagem}">
		<div class="alert alert-success">
		  <strong>Confirma??o!</strong> ${mensagem}
		</div>	  
	  </c:if>

	  <form action="/candidato" method="get">
	    <button type="submit" class="btn btn-primary">Novo</button>
	  </form>
	  
	  <hr>
	<c:if test="${not empty candidatos}">		
		<h2>Total de Candidatos: ${candidatos.size()}</h2>
		  
		<table class="table table-striped">
		    <thead>
		      <tr>
		        <th>ID</th>
		        <th>Numero</th>
		        <th>Nome</th>
		        <th>Votos</th>
		      </tr>
		    </thead>
		    <tbody>
		      <c:forEach var="candidato" items="${candidatos}">
			      <tr>
			        <td>${candidato.id}</td>
			        <td>${candidato.numero}</td>
			        <td>${candidato.nome}</td>
			        <td>${candidato.votos.size()}</td>
		        	<td><a href="/candidato/${candidato.id}/excluir">excluir</a></td>
			      </tr>
		      </c:forEach>		      
		    </tbody>
	  	</table>
    </c:if>	  	  

	<c:if test="${empty candidatos}">		
	  <h2>N?o existem candidatos cadastrados!!!</h2>
	</c:if>

	</div>
</body>
</html>