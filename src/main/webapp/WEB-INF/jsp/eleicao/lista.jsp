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
		<h2>Cadastramento de Eleições</h2>

		<c:if test="${not empty mensagem}">
			<div class="alert alert-success">
				<strong>Confirmação!</strong> ${mensagem}
			</div>
		</c:if>

		<form action="/eleicao" method="get">
			<button type="submit" class="btn btn-primary">Nova</button>
		</form>

		<hr>
		<c:if test="${not empty lista}">
			<h2>Total de Eleicoes: ${lista.size()}</h2>

			<table class="table table-striped">
				<thead>
					<tr>
						<th>ID</th>
						<th>Data</th>
						<th>Descricao</th>
						<th>Candidatos</th>
						<th>Votos</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="eleicao" items="${lista}">
						<tr>
							<td>${eleicao.id}</td>
							<td>${eleicao.data}</td>
							<td>${eleicao.descricao}</td>
							<td>${eleicao.candidatos.size()}</td>
							<td>${eleicao.votos.size()}</td>
							<td><a href="/eleicao/${eleicao.id}/excluir">excluir</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</c:if>

		<c:if test="${empty lista}">
			<h2>Não existem eleicoes cadastradas!!!</h2>
		</c:if>

	</div>
</body>
</html>