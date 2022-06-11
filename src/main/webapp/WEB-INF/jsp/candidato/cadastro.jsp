<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>

	<c:import url="/WEB-INF/jsp/menu.jsp" />

	<div class="container mt-3">
		<h2>Cadastramento de Candidatos</h2>

		<c:if test="${not empty mensagem}">
			<div class="alert alert-success">
				<strong>Confirma��o!</strong> ${mensagem}
			</div>
		</c:if>

		<form action="/candidato/incluir" method="post">
			<div class="mb-3 mt-3">
				<label>N�mero:</label> <input type="number" class="form-control"
					placeholder="Entre com o seu numero" name="numero" value="22">
			</div>

			<div class="mb-3 mt-3">
				<label>Nome:</label> <input type="text" class="form-control"
					placeholder="Entre com o nome do candidato" name="nome"
					value="Candidato 22">
			</div>

			<div class="mb-3 mt-3">
				<c:if test="${not empty eleicoes}">
					<label>Elei��o:</label>
					<c:forEach var="eleicao" items="${eleicoes}">
						<div class="radio">
							<label><input type="radio" value="${eleicao.id}"
								name="idEleicao">${eleicao.descricao}</label>
						</div>
					</c:forEach>
				</c:if>
			</div>


			<button type="submit" class="btn btn-primary">Cadastrar</button>
		</form>
	</div>

</body>
</html>