<!DOCTYPE html>

<nav class="navbar navbar-default navbar-fixed-top">
	<div class="container">
		<div class="col-xs-3 col-sm-3 col-md-2">
			<button type="button" id="sidebarCollapse"
				class="btn btn-info navbar-btn active">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
	
			<a id="logo" class="navbar-brand" href="/"
				alt="Semear | Sistema de Compartilhamento AcadÃªmico." rel="nofollow"></a>
		</div>
		<div class="col-xs-8 col-sm-6 col-md-8" style="margin-top: 9px;">
		<form action="/" method="GET">
			<div class="input-group">
				<input type="text" class="form-control" placeholder="Encontre cursos, diciplinas e publicações"
					id="txtSearch" />
				<div class="input-group-btn">
					<button class="btn btn-success" type="submit">
						<span class="glyphicon glyphicon-search"></span>
					</button>
				</div>
			</div>
		</form>
		</div>
		<div class="col-xs-1">
		<button type="button" class="navbar-toggle collapsed"
			data-toggle="collapse" data-target="#menuPrincipal"
			aria-expanded="false">
			<span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span>
			<span class="icon-bar"></span> <span class="icon-bar"></span>
		</button>
		</div>
		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse" id="menuPrincipal">
			<ul class="nav navbar-nav navbar-right">
				<li><a href="/${SPRING_SECURITY_CONTEXT.authentication.principal.username}"><b>${SPRING_SECURITY_CONTEXT.authentication.principal.usuario.nome} ${SPRING_SECURITY_CONTEXT.authentication.principal.usuario.sobrenome}</b></a></li>
				<li class="dropdown">
				<a href="#" class=" dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false" style="padding: 10px;">
					<img src="/static/Perfis/pefil-default.png" class="img-circle" style="width: 30px;">
				</a>
					<ul class="dropdown-menu">
						<li><a href="/info-conta">Minha Conta</a></li>
						<li><a href="#">Another action</a></li>
						<li><a href="#">Something else here</a></li>
						<li role="separator" class="divider"></li>
						<li><script>
							function logout() {
								document.formulario1.submit()
							}
						</script> <a href="javascript:logout()" action><span
								class="glyphicon glyphicon-log-out"></span> Sair</a>
							<form method="post" action="/logout" name="formulario1">
								<input type="hidden" name="${_csrf.parameterName}"
									value="${_csrf.token}" />
							</form></li>
					</ul></li>
			</ul>
		</div>
		</div>
		<!-- /.navbar-collapse -->
	<!-- /.container-fluid -->
</nav>
<a id="top" href="#"></a>