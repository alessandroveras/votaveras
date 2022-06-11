<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
</head>
<body>

	<c:import url="/WEB-INF/jsp/menu.jsp"/>

	<div class="container mt-3">
	  <h2>Cadastramento de Votos</h2>
	  
	  <c:if test="${not empty mensagem}">
		<div class="alert alert-success">
		  <strong>Confirma��o!</strong> ${mensagem}
		</div>	  
	  </c:if>

	  <form action="/voto/incluir" method="post">
	  
	  <div class="form-group">
		  	<c:if test="${not empty eleitores}">
		  	<label>Eleitores:</label>
		  	<select class="form-control" name="eleitor.id">
		    	<c:forEach var="eleitor" items="${eleitores}">
		    	<option value="${eleitor.id}">${eleitor.nome}</option>
		    	</c:forEach>
		  	</select>
		  	</c:if>
		  
			<c:if test="${empty eleitores}">
				<c:set var="botao" value="disabled"/>
		  		<label>N�o existem eleitores cadastrados!!!</label>
		  	</c:if>
		</div>
	
	    <div class="mb-3 mt-3">
	      <label>Localiza��o:</label>
	      <input type="text" class="form-control" placeholder="Entre com a localiza��o do voto" name="localizacao" value="Escola Municipal Ficticia 1">
	    </div>

	    <button type="submit" class="btn btn-primary">Cadastrar</button>
	  </form>
	</div>

</body>
</html>