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
		<h2>Cadastramento de Votos</h2>

		<c:if test="${not empty mensagem}">
			<div class="alert alert-success">
				<strong>Confirmação!</strong> ${mensagem}
			</div>
		</c:if>

		<form action="/voto/incluir" method="post">


			<div class="mb-3 mt-3">
				<label>Localização:</label> <input type="text" class="form-control"
					placeholder="Entre com a localização do voto" name="localizacao"
					value="Escola Municipal Ficticia 1">
			</div>

			<div class="form-group">
				<c:if test="${not empty eleitores}">
					<label>Eleitor:</label>
					<select class="form-control" name="idEleitor">
						<c:forEach var="eleitor" items="${eleitores}">
							<option value="${eleitor.id}">${eleitor.nome}</option>
						</c:forEach>
					</select>
				</c:if>

				<c:if test="${empty eleitores}">
					<c:set var="botao" value="disabled" />
					<label>Não existem eleitores cadastrados!!!</label>
				</c:if>
			</div>

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
					<label>Não existem eleicoes cadastrados!!!</label>
				</c:if>
			</div>

			<div class="form-group">
				<c:if test="${not empty candidatos}">
					<label>Candidato:</label>
					<select class="form-control" name="idCandidato">
						<c:forEach var="candidato" items="${candidatos}">
								<option value="${candidato.id}">${candidato.nome}</option>
						</c:forEach>
					</select>
				</c:if>

				<c:if test="${empty candidatos}">
					<c:set var="botao" value="disabled" />
					<label>Não existem candidatos cadastrados!!!</label>
				</c:if>
			</div>

			<button type="submit" class="btn btn-primary">Cadastrar</button>
		</form>
	</div>

</body>
</html>