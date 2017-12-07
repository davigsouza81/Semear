<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
    <head>
        <%@include file="componentes/head.jsp" %>
    </head>
    <body>
        <%@include file="componentes/menuTop.jsp" %>
        <div class="container">
            <%@include file="componentes/menuSidebar.jsp" %>

            <div class="col-sm-9 col-md-9">
            
            <!-- AREA TOPO -->
                <div id="perfil-panel" class="row publication">
                
                
                    
                    <div class="row">
                    	 <div class="col-sm-6 col-md-4 col-xs-4">
						    <div class="thumbnail">
						    <a href="#" class=""><img src="/static/Perfis/pefil-default.png"></a>
						    </div>
						  </div>
                        
<!--                         <div class="col-md-8"> -->
<!--                                 <dl> -->
<!--                                     <dt>Instituição</dt> -->
<!--                                     <dd> -->
<!--                                     	<p>UniEVANGELICA - Centro Univercitário</p> -->
<!--                                     </dd> -->
<!--                                     <dt>Curso</dt> -->
<!--                                     <dd> -->
<!--                                     	<p><a class="" href="/cursos/unievangelica/engenharia-de-computacao">Engenharia de Computação</a></p> -->
<!--                                     </dd> -->
<!--                                     <dt>Carga Horária</dt> -->
<!--                                     <dd> -->
<!--                                     	<p>40 horas</p> -->
<!--                                     </dd> -->
<!--                                 </dl> -->
<!--                         </div> -->

                    </div>
                    <div id="perfil-navbar" class="row">
                        <div class="col-md-12 text-right" id="acao">
                            <nav class="navbar" style="margin: 0px; background: #fff;">
							  <div class="container-fluid">
							    <div class="navbar-header">
							      <a class="navbar-brand" href="/cursos/unievangelica"><b>UniEVANGELICA - Centro Universitário</b></a>
							    </div>
							    <ul class="nav navbar-nav navbar-right nav-tabs">
							      <li <c:if test="${mode == 'MODE_CURSOS'}"> class="active" </c:if>><a href="/cursos/unievangelica">Cursos</a></li>
							      <li <c:if test="${mode == 'MODE_SOBRE'}"> class="active" </c:if>><a href="/cursos/unievangelica?pagina=sobre">Sobre</a></li>
							    </ul>
							  </div>
</nav>
                        </div>
                    </div>

                </div>
                <!--FIM AREA TOPO-->
                
                <!-- AREA CURSOS -->
                	<c:if test="${mode == 'MODE_CURSOS'}">
                	<div class="row">
                		<div class="col-md-6">
                			<div class="row panel panel-default intituicao-curso">
								<div class="panel-body">
										<div class="media" style="display: inline-block;">
											<div class="media-left">
												<a href="#" class=""><img class="media-object" src="/static/Perfis/curso-default.png"></a>
											</div>
											<div class="media-body" style="vertical-align: middle;">
													<dl style="margin: 0px;">
					                                    <dd>
					                                    	<a href="#" class=""><b>Administração</b></a>
					                                    </dd>
					                                    <dd>
					                                    	Bacharelado
					                                    </dd>
					                                    <dt>Coordenador</dt>
					                                    <dd>
					                                    	M.e Ieso Costa Marques
					                                    </dd>
					                                    <dd>
					                                    	<a href="#" class="btn btn-success btn-xs btn-block">Increver-se</a>
					                                    </dd>
					                                </dl>
													
											</div>
										</div>
								</div>
							</div>
                		
                		</div>
                		<div class="col-md-6">
                			<div class="row panel panel-default intituicao-curso">
								<div class="panel-body">
										<div class="media" style="display: inline-block;">
											<div class="media-left">
												<a href="#" class=""><img class="media-object" src="/static/Perfis/curso-default.png"></a>
											</div>
											<div class="media-body" style="vertical-align: middle;">
													<dl style="margin: 0px;">
					                                    <dd>
					                                    	<a href="#" class=""><b>Direito</b></a>
					                                    </dd>
					                                    <dd>
					                                    	Bacharelado
					                                    </dd>
					                                    <dt>Coordenador</dt>
					                                    <dd>
					                                    	Daniel Gonçalves Mendes da Costa
					                                    </dd>
					                                    <dd>
					                                    	<a href="#" class="btn btn-success btn-xs btn-block">Increver-se</a>
					                                    </dd>
					                                </dl>
													
											</div>
										</div>
								</div>
							</div>
                		
                		</div>
                		<div class="col-md-6">
                			<div class="row panel panel-default intituicao-curso">
								<div class="panel-body">
										<div class="media" style="display: inline-block;">
											<div class="media-left">
												<a href="/cursos/unievangelica/engenharia-civil" class=""><img class="media-object" src="/static/Perfis/curso-default.png"></a>
											</div>
											<div class="media-body" style="vertical-align: middle;">
													<dl style="margin: 0px;">
					                                    <dd>
					                                    	<a href="/cursos/unievangelica/engenharia-civil" class=""><b>Engenharia Civil</b></a>
					                                    </dd>
					                                    <dd>
					                                    	Bacharelado
					                                    </dd>
					                                    <dt>Coordenador</dt>
					                                    <dd>
					                                    	M.e Rogério Santos Cardoso
					                                    </dd>
					                                    <dd>
					                                    	<a href="#" class="btn btn-default btn-xs btn-block">Incrito</a>
					                                    </dd>
					                                </dl>
													
											</div>
										</div>
								</div>
							</div>
                		
                		</div>
                		<div class="col-md-6">
                			<div class="row panel panel-default intituicao-curso">
								<div class="panel-body">
										<div class="media" style="display: inline-block;">
											<div class="media-left">
												<a href="/cursos/unievangelica/engenharia-de-computacao" class=""><img class="media-object" src="/static/Perfis/curso-default.png"></a>
											</div>
											<div class="media-body" style="vertical-align: middle;">
													<dl style="margin: 0px;">
					                                    <dd>
					                                    	<a href="/cursos/unievangelica/engenharia-de-computacao" class=""><b>Engenharia de Computação</b></a>
					                                    </dd>
					                                    <dd>
					                                    	Bacharelado
					                                    </dd>
					                                    <dt>Coordenador</dt>
					                                    <dd>
					                                    	M.a Viviane Carla Batista Pocivi
					                                    </dd>
					                                    <dd>
					                                    	<a href="#" class="btn btn-default btn-xs btn-block">Incrito</a>
					                                    </dd>
					                                </dl>
													
											</div>
										</div>
								</div>
							</div>
                		
                		</div>
                		<div class="col-md-6">
                			<div class="row panel panel-default intituicao-curso">
								<div class="panel-body">
										<div class="media" style="display: inline-block;">
											<div class="media-left">
												<a href="/cursos/unievangelica/engenharia-de-software" class=""><img class="media-object" src="/static/Perfis/curso-default.png"></a>
											</div>
											<div class="media-body" style="vertical-align: middle;">
													<dl style="margin: 0px;">
					                                    <dd>
					                                    	<a href="/cursos/unievangelica/engenharia-de-software" class=""><b>Engenharia de Software</b></a>
					                                    </dd>
					                                    <dd>
					                                    	Bacharelado
					                                    </dd>
					                                    <dt>Coordenador</dt>
					                                    <dd>
					                                    	M.a Viviane Carla Batista Pocivi
					                                    </dd>
					                                    <dd>
					                                    	<a href="#" class="btn btn-default btn-xs btn-block">Incrito</a>
					                                    </dd>
					                                </dl>
													
											</div>
										</div>
								</div>
							</div>
                		
                		</div>
                		<div class="col-md-6">
                			<div class="row panel panel-default intituicao-curso">
								<div class="panel-body">
										<div class="media" style="display: inline-block;">
											<div class="media-left">
												<a href="#" class=""><img class="media-object" src="/static/Perfis/curso-default.png"></a>
											</div>
											<div class="media-body" style="vertical-align: middle;">
													<dl style="margin: 0px;">
					                                    <dd>
					                                    	<a href="#" class=""><b>Farmácia</b></a>
					                                    </dd>
					                                    <dd>
					                                    	Bacharelado
					                                    </dd>
					                                    <dt>Coordenador</dt>
					                                    <dd>
					                                    	Dra. Dulcinea Maria Barbosa Campos
					                                    </dd>
					                                    <dd>
					                                    	<a href="#" class="btn btn-success btn-xs btn-block">Increver-se</a>
					                                    </dd>
					                                </dl>
													
											</div>
										</div>
								</div>
							</div>
                		
                		</div>
                		<div class="col-md-6">
                			<div class="row panel panel-default intituicao-curso">
								<div class="panel-body">
										<div class="media" style="display: inline-block;">
											<div class="media-left">
												<a href="#" class=""><img class="media-object" src="/static/Perfis/curso-default.png"></a>
											</div>
											<div class="media-body" style="vertical-align: middle;">
													<dl style="margin: 0px;">
					                                    <dd>
					                                    	<a href="#" class=""><b>Medicina</b></a>
					                                    </dd>
					                                    <dd>
					                                    	Bacharelado
					                                    </dd>
					                                    <dt>Coordenador</dt>
					                                    <dd>
					                                    	M.e João Baptista Carrijo
					                                    </dd>
					                                    <dd>
					                                    	<a href="#" class="btn btn-success btn-xs btn-block">Increver-se</a>
					                                    </dd>
					                                </dl>
													
											</div>
										</div>
								</div>
							</div>
                		
                		</div>
                		<div class="col-md-6">
                			<div class="row panel panel-default intituicao-curso">
								<div class="panel-body">
										<div class="media" style="display: inline-block;">
											<div class="media-left">
												<a href="#" class=""><img class="media-object" src="/static/Perfis/curso-default.png"></a>
											</div>
											<div class="media-body" style="vertical-align: middle;">
													<dl style="margin: 0px;">
					                                    <dd>
					                                    	<a href="#" class=""><b>Odontologia</b></a>
					                                    </dd>
					                                    <dd>
					                                    	Bacharelado
					                                    </dd>
					                                    <dt>Coordenador</dt>
					                                    <dd>
					                                    	M.e Cristiane Martins Rodrigues Bernardes
					                                    </dd>
					                                    <dd>
					                                    	<a href="#" class="btn btn-success btn-xs btn-block">Increver-se</a>
					                                    </dd>
					                                </dl>
													
											</div>
										</div>
								</div>
							</div>
                		
                		</div>
                		<div class="col-md-6">
                			<div class="row panel panel-default intituicao-curso">
								<div class="panel-body">
										<div class="media" style="display: inline-block;">
											<div class="media-left">
												<a href="#" class=""><img class="media-object" src="/static/Perfis/curso-default.png"></a>
											</div>
											<div class="media-body" style="vertical-align: middle;">
													<dl style="margin: 0px;">
					                                    <dd>
					                                    	<a href="#" class=""><b>Psicologia</b></a>
					                                    </dd>
					                                    <dd>
					                                    	Bacharelado
					                                    </dd>
					                                    <dt>Coordenador</dt>
					                                    <dd>
					                                    	Dra. Lila Maria Spadoni Lemes
					                                    </dd>
					                                    <dd>
					                                    	<a href="#" class="btn btn-success btn-xs btn-block">Increver-se</a>
					                                    </dd>
					                                </dl>
													
											</div>
										</div>
								</div>
							</div>
                		
                		</div>
                		
                	</div>
                	</c:if>
                <!-- FIM AREA CURSOS -->
                
                <!-- AREA SOBRE -->
                	<c:if test="${mode == 'MODE_SOBRE'}">
                		<div class="row panel panel-default">
                			<div class="panel-heading"><h4><b>Sobre</b></h4></div>
                			<div class="panel-body text-justify">
                              	<p>
                              		O Centro Universitário de Anápolis - UniEVANGÉLICA é uma das maiores e melhores instituições de ensino superior de Goiás. Oferece cursos de graduação, pós-graduação e mestrado e tem hoje cerca de 10 mil alunos.
                              	</p>
                               	<p>
                               		A instituição conta com uma estrutura privilegiada com excelentes bibliotecas, laboratórios modernos e um corpo docente altamente qualificado.
                               	</p>
                               	<p>
                               		Desde março de 2004, a então Faculdades Integradas da Associação Educativa Evangélica passou a ser o primeiro Centro Universitário de Goiás. A UniEVANGÉLICA faz parte da Associação Educativa Evangélica, que foi fundada em 1947 e tem hoje mais de 10 instituições de ensino. É caracterizada pela qualidade e tradição e tem como objetivo preparar estudantes para desenvolver liderança, pensamento crítico e se destacar em um mercado de trabalho inovador e competitivo.
                               	</p>
                			</div>
                		</div>
                	</c:if>
                <!-- FIM AREA SOBRE -->
                
            </div>
        </div>
    </body>
</html>
