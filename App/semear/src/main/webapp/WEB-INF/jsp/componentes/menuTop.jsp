<!DOCTYPE html>

<nav class="navbar navbar-default navbar-fixed-top">
	<div class="container">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#menuPrincipal"
				aria-expanded="false">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<!--<a class="navbar-brand" href="#">Brand</a>-->
			<a id="logo" class="navbar-brand" href="#top"
				alt="Semear | Sistema de Compartilhamento Acadêmico."
				rel="nofollow"></a>
			<form id="form-pesquisa" class="navbar-form navbar-left">
				<div id="navInput" class="form-group col-xs-11">
					<input type="text" class="form-control " placeholder="Pesquisar">
				</div>
				<div id="navButton" class="col-xs-1">
					<button type="submit" class="btn btn-default">
						<span class="glyphicon glyphicon-search"></span>
					</button>
				</div>
			</form>
		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse" id="menuPrincipal">
			<ul class="nav navbar-nav">
				<li class="active"><a href="/">HOME</a></li>
				<li><a href="#">SOBRE</a></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">TRABALHOS <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="/">Meus Trabalhos</a></li>
						<li><a href="enviar-arquivo">Publicar</a></li>
						<li><a href="#">Something else here</a></li>
						<li role="separator" class="divider"></li>
						<li><a href="#">Separated link</a></li>
						<li role="separator" class="divider"></li>
						<li><a href="#">One more separated link</a></li>
					</ul></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="/">Davi Souza</a></li>
				<li class="dropdown"><a href="#" class=" dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false"><span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="info-conta">Minha Conta</a></li>
						<li><a href="#">Another action</a></li>
						<li><a href="#">Something else here</a></li>
						<li role="separator" class="divider"></li>
						<li>
						<script>
							function logout() {
								document.formulario1.submit()
							}
						</script> 
						<a href="javascript:logout()" action><span class="glyphicon glyphicon-log-out"></span> Sair</a>
							<form method="post" action="/logout" name="formulario1">
								<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
							</form></li>
					</ul></li>
			</ul>
		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container-fluid -->
</nav>
<a id="top" href="#"></a>