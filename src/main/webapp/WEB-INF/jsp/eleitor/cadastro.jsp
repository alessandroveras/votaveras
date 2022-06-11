<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
</head>
<body>

	<c:import url="/WEB-INF/jsp/menu.jsp" />

	<div class="container mt-3">
		<h2>Cadastramento de Eleitor</h2>

		<c:if test="${not empty mensagem}">
			<div class="alert alert-success">
				<strong>Confirmação!</strong> ${mensagem}
			</div>
		</c:if>

		<form action="/eleitor/incluir" method="post">

			<div class="mb-3 mt-3">
				<label>Código:</label> <input type="text" class="form-control"
					placeholder="Entre com o codigo do eleitor" name="codigo" value="1">
			</div>

			<div class="mb-3 mt-3">
				<label>Nome:</label> <input type="text" class="form-control"
					placeholder="Entre com o nome do eleitor" name="nome" value="Eleitor 1">
			</div>
			
			<div class="mb-3 mt-3">
				<label>E-Mail:</label> <input type="email" class="form-control"
					placeholder="Entre com o e-mail do eleitor" name="email" value="eleitor1@myemail.com">
			</div>
			
			<div class="mb-3 mt-3">
				<label>Telefone:</label> <input type="text" class="form-control"
					placeholder="Entre com o telefone do eleitor" name="telefone" value="2199990000">
			</div>
			
			<div class="mb-3 mt-3">
				<label>Token:</label> <input type="text" class="form-control"
					placeholder="Entre com o token do eleitor" name="token" value="axyzbbbad7871edds">
			</div>			
			

			<button type="submit" class="btn btn-primary">Cadastrar</button>
		</form>
	</div>

</body>
</html>