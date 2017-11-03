<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<%@include file="componentes/head.jsp"%>
</head>
<body>
	<%@include file="componentes/menuTop.jsp"%>
	<div class="container">
		<%@include file="componentes/menuSidebar.jsp"%>

		<div class="col-md-9">
			<div class="row publication">
				<h2>Conta</h2>
				<table class="table col-md-12">
					<tr>
						<th class="col-md-2">Nome</th>
						<td class="col-md-10">${usuario.nome} ${usuario.sobrenome}</td>
					</tr>
					<tr>
						<th>Nome de usuário</th>
						<td>${usuario.nomeUsuario}</td>
					</tr>
					<tr>
						<th>E-mail</th>
						<td>${usuario.email}</td>
					</tr>
					<tr>
						<th>Data de nascimento</th>
						<td><fmt:formatDate value="${usuario.dtNascimento}" pattern="dd 'de' MMMM 'de' yyyy"/></td>
					</tr>
					<tr>
						<th>Sexo</th>
						<td>${usuario.sexo}</td>
					</tr>
					<c:forEach var="curso" items="${usuario.cursos}">
						<tr>
							<th rowspan="${fn:length(usuario.cursos)}">Instituicao</th>
							<td>${curso.instituicao.nome}</td>
						</tr>
						<tr>
							<th>Curso</th>
							<td>${curso.nome}</td>
						</tr>
					</c:forEach>
					<tr>
						<th>Data de Cadastro</th>
						<td><fmt:formatDate value="${usuario.dtCadastro}" pattern="dd 'de' MMMM 'de' yyyy 'às' hh:mm a"/></td>
					</tr>
				</table>
				<a type="submit" class="btn btn-default btn-lg"><span class="glyphicon glyphicon-pencil"></span> Editar</a>
			</div>
		</div>
	</div>
</body>
</html>
