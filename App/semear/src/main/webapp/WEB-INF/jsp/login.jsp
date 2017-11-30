<%-- 
    Document   : login
    Created on : 19/09/2017, 14:34:48
    Author     : davig
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<!-- Bootstrap core CSS -->
<%@include file="componentes/head.jsp"%>
</head>
<body>
<div class="home-image"></div>
	<nav class="navbar navbar-default navbar-fixed-top">
		<div class="container">
			<div class="navbar-header" style="margin: 11px 0px">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#navbar" aria-expanded="false"
					aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a id="logo" class="navbar-brand" href="/" alt="Semear  Sistema de Compartilhamento Acadêmico."></a>
			</div>
			<div id="navbar" class="navbar-collapse colcollapse">
				<form class="navbar-form navbar-right" action="/login" method="POST">
					<div class="row">
						<div class="col-md-12">
							<div class="form-group">
								<input type="text" placeholder="Usuário" name="username"
									class="form-control">
							</div>
							<div class="form-group">
								<input type="password" placeholder="Senha" name="password"
									class="form-control">
							</div>
							<button type="submit" name="submit" class="btn btn-success">Entrar</button>
						</div>
					</div>
					<div class="row">
						<div class="col-md-5">
							<div class="form-group">
								<label id="lembrarSenha"  for="remember-me"><input type="checkbox" id="remember-me" name="remember-me" /> Lembrar?</label>
							</div>
						</div>
						<div class="col-md-7">
							<div class="form-group	">
								<a id="recuperarSenha" href="#">Esqueceu a senha?</a>
							</div>
						</div>
					</div>
					<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
				</form>
			</div>
			<!--/.navbar-collapse -->
		</div>
	</nav>

	<!-- Main jumbotron for a primary marketing message or call to action -->
	<div id="loginMain" class="jumbotron">
		<div class="container">
			<div class="row">
				<div class="col-md-6">
					<h3>Bem-vindo ao</h3>
					<h1>Semear</h1>
					<p class="text-justify">O SEMEAR é uma plataforma de publicação e compartilhamento de trabalhos e artigos acadêmicos que disponibiliza um acervo de conteúdos aprovados no  intuito de incentivar discentes e docentes a desenvolverem conteúdos com maior qualidade. </p>
				</div>
				<div class="col-md-6">
					<h2>Cadastre-se</h2>
					<form class="form-horizontal" action="/aluno" method="post">
						<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
						<input type="hidden" name="status" value="1"/>
						
						<div class="form-group">
							<div class="col-sm-6 noPaddingRigth">
								<input type="text" class="form-control input-lg noPaddingRigth" id="nome" placeholder="Nome" name="nome">
							</div>
							<div class="col-sm-6 noPaddingLeft">
								<input type="text" class="form-control input-lg" id="sobrenome" placeholder="Sobrenome" name="sobrenome">
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-6 noPaddingRigth">
								<select class="form-control input-lg" disabled="disabled" name="instituicao">
									<c:forEach var="instituicao" items="${instituicoes}">
										<option value="${instituicao.id}">${instituicao.nome}</option>
									</c:forEach>
								</select>
							</div>
							<div class="col-sm-6 noPaddingLeft">
								<select class="form-control input-lg" disabled="disabled" name="curso">
									<c:forEach var="curso" items="${cursos}">
										<option value="${curso.id}" selected="selected">${curso.nome}</option>
									</c:forEach>
								</select>
									<input type="hidden" name="cursoId" value="${cursos[0].id}"/>
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-12">
								<input type="text" class="form-control input-lg" id="usuario" placeholder="Usuário" name="nomeUsuario">
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-12">
								<input type="email" class="form-control input-lg" id="email" placeholder="E-mail" name="email">
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-12">
								<input type="password" class="form-control input-lg" id="senha" placeholder="Senha" name="senha">
							</div>
						</div>
						<div class="form-group">
							<label for="dia" class="col-sm-12">Data de Nascimento</label>
							<div class="col-sm-3 noPaddingRigth">
								<input type="text" class="form-control input-lg" id="dia" placeholder="Dia" name="dia">
							</div>
							<div class="col-sm-6 noPaddingLeft noPaddingRigth">
								<select class="form-control input-lg" name="mes">
									<option value="1">Janeiro</option>
									<option value="2">Fevereiro</option>
									<option value="3">Março</option>
									<option value="4">Abril</option>
									<option value="5">Maio</option> 
									<option value="6">Junho</option>
									<option value="7">Julho</option>
									<option value="8">Agosto</option>
									<option value="9">Setembro</option>
									<option value="10">Outubro</option>
									<option value="11">Novembro</option>
									<option value="12">Dezembro</option>
								</select>
							</div>
							<div class="col-sm-3 noPaddingLeft">
								<input type="text" class="form-control input-lg" id="ano" placeholder="Ano" name="ano">
							</div>
						</div>

						<div class="form-group form-group-lg">
							<div class="col-sm-12">
								<label class="radio-inline input-lg"> <input
									type="radio" id="sexo" name="sexo" value="Masculino"> Masculino
								</label> <label class="radio-inline input-lg"> <input
									type="radio" id="sexo" name="sexo" value="Feminino"> Feminino
								</label>
							</div>
						</div>

						<div class="form-group">
							<div class="col-sm-6">
								<button type="submit" class="btn btn-success btn-lg btn-block">Criar Conta</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>

<!-- 	<div class="container"> -->
<!-- 		<!-- Example row of columns -> -->
<!-- 		<div class="row"> -->
<!-- 			<div class="col-md-4"> -->
<!-- 				<h2>Heading</h2> -->
<!-- 				<p>Donec id elit non mi porta gravida at eget metus. Fusce -->
<!-- 					dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, -->
<!-- 					ut fermentum massa justo sit amet risus. Etiam porta sem malesuada -->
<!-- 					magna mollis euismod. Donec sed odio dui.</p> -->
<!-- 				<p> -->
<!-- 					<a class="btn btn-default" href="#" role="button">View details -->
<!-- 						&raquo;</a> -->
<!-- 				</p> -->
<!-- 			</div> -->
<!-- 			<div class="col-md-4"> -->
<!-- 				<h2>Heading</h2> -->
<!-- 				<p>Donec id elit non mi porta gravida at eget metus. Fusce -->
<!-- 					dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, -->
<!-- 					ut fermentum massa justo sit amet risus. Etiam porta sem malesuada -->
<!-- 					magna mollis euismod. Donec sed odio dui.</p> -->
<!-- 				<p> -->
<!-- 					<a class="btn btn-default" href="#" role="button">View details -->
<!-- 						&raquo;</a> -->
<!-- 				</p> -->
<!-- 			</div> -->
<!-- 			<div class="col-md-4"> -->
<!-- 				<h2>Heading</h2> -->
<!-- 				<p>Donec sed odio dui. Cras justo odio, dapibus ac facilisis in, -->
<!-- 					egestas eget quam. Vestibulum id ligula porta felis euismod semper. -->
<!-- 					Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum -->
<!-- 					nibh, ut fermentum massa justo sit amet risus.</p> -->
<!-- 				<p> -->
<!-- 					<a class="btn btn-default" href="#" role="button">View details -->
<!-- 						&raquo;</a> -->
<!-- 				</p> -->
<!-- 			</div> -->
<!-- 		</div> -->

<!-- 		<hr> -->

<!-- 		<footer> -->
<!-- 			<p>&copy; 2016 Company, Inc.</p> -->
<!-- 		</footer> -->
<!-- 	</div> -->
	<!-- /container -->
</body>
</html>
