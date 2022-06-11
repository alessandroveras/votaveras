<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>AppMIT</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
</head>
<body>

	<c:import url="/WEB-INF/jsp/menu.jsp" />

	<div class="container mt-3">
		<h2>Cadastramento de Votos</h2>

		<c:if test="${not empty mensagem}">
			<div class="alert alert-success">
				<strong>Confirma��o!</strong> ${mensagem}
			</div>
		</c:if>

		<form action="/voto" method="get">
			<button type="submit" class="btn btn-primary">Novo</button>
		</form>

		<hr>
		<c:if test="${not empty votos}">
		
		<div class="form-group">
				<c:if test="${not empty eleicoes}">
					<label>Eleicao:</label>
					<select class="form-control" name="idEleicao">
						<c:forEach var="eleicao" items="${eleicoes}">
							<option value="${eleicao.id}">${eleicao.descricao}</option>
						</c:forEach>
					</select>
				</c:if>

				<c:if test="${empty eleicoes}">
					<c:set var="botao" value="disabled" />
					<label>N�o existem elei��es cadastradas!!!</label>
				</c:if>
			</div>
			
			<h2>Total de Votos: ${votos.size()}</h2>

			<table class="table table-striped">
				<thead>
					<tr>
						<th>Data</th>
						<th>Localiza��o</th>
						<th></th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="voto" items="${votos}">
						<tr>
							<td>${voto.data}</td>
							<td>${voto.localizacao}</td>
							<td><a href="/voto/${voto.id}/excluir">excluir</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</c:if>

		<c:if test="${empty votos}">
			<h2>N�o existem votos cadastrados!!!</h2>
		</c:if>

	</div>
</body>
</html>