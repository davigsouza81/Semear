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
            
            <!-- AREA TOPO  -->
                <div id="perfil-panel" class="row publication">
                
                
                    
                    <div class="row">
                    	 <div class="col-sm-6 col-md-4">
						    <div class="thumbnail">
						    <a href="#" class=""><img src="/static/Perfis/disciplina-default.png"></a>
						    </div>
						  </div>
                        
                        <div class="col-md-8">
                                <dl>
                                    <dt>Instituição</dt>
                                    <dd>
                                    	<a href="/cursos/unievangelica">UniEVANGELICA - Centro Universitário</a>
                                    </dd>
                                    <dt>Curso</dt>
                                    <dd>
                                    	<p><a class="" href="/cursos/unievangelica/engenharia-de-computacao">Engenharia de Computação</a></p>
                                    </dd>
                                    <dt>Carga Horária</dt>
                                    <dd>
                                    	<p>40 horas</p>
                                    </dd>
                                </dl>
                        </div>

                    </div>
                    <div id="perfil-navbar" class="row">
                        <div class="col-md-12 text-right" id="acao">
                            <nav class="navbar" style="margin: 0px;">
							  <div class="container-fluid">
							    <div class="navbar-header">
							      <a class="navbar-brand" href="/cursos/unievangelica/engenharia-de-computacao/projeto-interdiciplinar-vi"><b>Projeto Interdiciplinar VI</b></a>
							    </div>
							    <ul class="nav navbar-nav navbar-right nav-tabs">
							      <li <c:if test="${mode == 'MODE_PUBLICACOES'}"> class="active" </c:if>><a href="/cursos/unievangelica/engenharia-de-computacao/projeto-interdiciplinar-vi">Publicações</a></li>
							      <li <c:if test="${mode == 'MODE_SOBRE'}"> class="active" </c:if>><a href="/cursos/unievangelica/engenharia-de-computacao/projeto-interdiciplinar-vi?pagina=sobre">Sobre</a></li>
							      <li <c:if test="${mode == 'MODE_PUBLICAR'}"> class="active" </c:if>><a href="/cursos/unievangelica/engenharia-de-computacao/projeto-interdiciplinar-vi?pagina=publicar" class="btn btn-success">Publicar</a></li>
							      <li><a href="/cursos/unievangelica/engenharia-de-computacao/inscrever-se" class="btn-default btn-lg active">Inscrito</a></li>
							    </ul>
							  </div>
</nav>
                        </div>
                    </div>

                </div>
                <!--FIM AREA TOPO-->
                
                <!-- AREA PUBLICACOES -->
                	<c:if test="${mode == 'MODE_PUBLICACOES'}">
                		<%@include file="componentes/publicacao.jsp" %>
                	</c:if>
                <!-- FIM AREA PUBLICACOES -->
                
                <!-- AREA DISCIPLINAS -->
                	<c:if test="${mode == 'MODE_PUBLICAR'}">
                	
                	<div id="accordion" class="row panel panel-default">
                		
                			<div class="panel-heading"><h4><b>Publicar Trabalho</b></h4></div>
                			<div class="panel-body text-justify">
                				<form>
			                        <div class="form-group">
			                            <input type="text" class="form-control input-lg" id="nome" placeholder="Titulo do trabalho">
			                        </div>
			                        <div class="form-group">
			                            <textarea type="" class="form-control input-lg" id="descricao" placeholder="Descreva o conteúdo do trabalho"></textarea>
			                        </div>
			                        <div class="form-group">
			                            <input type="text" class="form-control input-lg" id="tags" placeholder="Escrevas tags ex.: tag1; tag2; tag3">
			                        </div>
			                        <div class="form-group">
			                            <label for="arquivo">Entrada de arquivo</label>
			                            <input type="file" class="btn btn-default" id="arquivo"/>
			                            <p class="help-block">Exemplo documento do Word.</p>
			                        </div>
			                        <button type="submit" class="btn btn-success btn-lg">Enviar</button>
			                    </form>
                			</div>
                		</div>
                	
                	</c:if>
                <!-- FIM AREA DISCIPLINAS -->
                
                <!-- AREA SOBRE -->
                	<c:if test="${mode == 'MODE_SOBRE'}">
                		<div class="row panel panel-default">
                			<div class="panel-heading"><h4><b>Sobre</b></h4></div>
                			<div class="panel-body text-justify">
                				<dl>
                                    <dt>Ementa</dt>
                                    <dd>
                                    	<p>
                                    		Desenvolvimento de conhecimentos, habilidades e competências para a constituição de um
acadêmico e profissional com formação integral: proporcionar o pensar integrado de problemas e
soluções; visão sistêmica.
                                    	</p>
                                    </dd>
                                    <dt>Justificativa</dt>
                                    <dd>
                                    	<p>
                                    		A transformação ocorrida no mercado de trabalho contemporâneo gera a necessidade de se
desenvolver um novo perfil profissional, cada vez mais integrador e multifuncional. Portanto é
importante desenvolver habilidades empreendedoras e avançar na capacidade de inovação dos
discentes do curso de Engenharia da Computação. Em razão das mudanças, esta disciplina propõe
capacitar o aluno a construir um pensamento integrado de problemas e soluções, visão sistêmica da
concepção, elaboração e apresentação de um novo produto.
                                    	</p>
                                    </dd>
                                </dl>
                			</div>
                		</div>
                	</c:if>
                <!-- FIM AREA SOBRE -->
                
            </div>
        </div>
    </body>
</html>
