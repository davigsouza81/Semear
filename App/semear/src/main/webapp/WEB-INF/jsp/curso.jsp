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
                    	 <div class="col-sm-6 col-md-4">
						    <div class="thumbnail">
						    <a href="#" class=""><img src="/static/Perfis/curso-default.png"></a>
<!-- 						      <div class="caption"> -->
<!-- 						        <h3><a href="#" class=""><b>Engenharia de Computação</b></a> </h3> -->
<!-- 						      </div> -->
<!-- 						      <a href="#" class="btn btn-success btn-lg btn-block">Inscrever-se</a> -->
						    </div>
						  </div>
                        
                        <div class="col-md-8">
                                <dl>
                                    <dt>Instituição</dt>
                                    <dd>
                                    	<a href="/cursos/unievangelica">UniEVANGELICA - Centro Universitário</a>
                                    </dd>
                                    <dt>Grau</dt>
                                    <dd>
                                    	<p>Bacharelado</p>
                                    </dd>
                                    <dt>Coordenador</dt>
                                    <dd>
                                    	<p>M.a Viviane Carla Batista Pocivi</p>
                                    </dd>
                                    <dt>Secretaria do Curso</dt>
                                    <dd>
                                    	<p>Telefone: (62) 3310-6658</p>
                                    </dd>
                                </dl>
                        </div>

                    </div>
                    <div id="perfil-navbar" class="row">
                        <div class="col-md-12 text-right" id="acao">
                            <nav class="navbar" style="margin: 0px;">
							  <div class="container-fluid">
							    <div class="navbar-header">
							      <a class="navbar-brand" href="/cursos/unievangelica/engenharia-de-computacao"><b>Engenharia de Computação</b></a>
							    </div>
							    <ul class="nav navbar-nav navbar-right nav-tabs">
							      <li <c:if test="${mode == 'MODE_PUBLICACOES'}"> class="active" </c:if>><a href="/cursos/unievangelica/engenharia-de-computacao">Publicações</a></li>
							      <li <c:if test="${mode == 'MODE_DISCIPLINAS'}"> class="active" </c:if>><a href="/cursos/unievangelica/engenharia-de-computacao?pagina=disciplinas">Disciplinas</a></li>
							      <li <c:if test="${mode == 'MODE_SOBRE'}"> class="active" </c:if>><a href="/cursos/unievangelica/engenharia-de-computacao?pagina=sobre">Sobre</a></li>
							      <li><a href="/cursos/unievangelica/engenharia-de-computacao/inscrever-se" class="btn btn-success btn-lg">Inscrever-se</a></li>
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
                	<c:if test="${mode == 'MODE_DISCIPLINAS'}">
                	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
                	<script type="text/javascript">
                	$( function() {
                	    $( "#accordion" ).accordion({
                	      heightStyle: "content"
                	    });
                	  } );
                	</script>
                	
                		<div id="accordion" class="row panel panel-default">
                		
                			<div class="panel-heading"><h4><b>1º Período</b></h4></div>
                			<div class="panel-body text-justify collapse" id="periodo_1">
                				<table class="col-md-12 table table-hover table-condensed">
                					<tr>	
                						<td class="col-md-10"><a href="#">ALGORITMOS E PROGRAMAÇÃO I</a></td>
                						<td class="col-md-2 text-right"><a href="#" class="btn btn-default btn-xs btn-block">Inscrito</a></td>
                					</tr>
                					<tr>
                						<td class="col-md-10"><a href="#">CÁLCULO I</a></td>
                						<td class="col-md-2 text-right"><a href="#" class="btn btn-success btn-xs btn-block">Inscrever-se</a></td>
                					</tr>
                					<tr>
                						<td class="col-md-10"><a href="#">FUNDAMENTOS EM ENGENHARIA DE SOFTWARE</a></td>
                						<td class="col-md-2 text-right"><a href="#" class="btn btn-success btn-xs btn-block">Inscrever-se</a></td>
                					</tr>
                					<tr>
                						<td class="col-md-10"><a href="#">LÍNGUA PORTUGUESA</a></td>
                						<td class="col-md-2 text-right"><a href="#" class="btn btn-success btn-xs btn-block">Inscrever-se</a></td>
                					</tr>
                					<tr>
                						<td class="col-md-10"><a href="#">LÓGICA</a></td>
                						<td class="col-md-2 text-right"><a href="#" class="btn btn-success btn-xs btn-block">Inscrever-se</a></td>
                					</tr>
                					<tr>
                						<td class="col-md-10"><a href="#">SOCIEDADE DA INFORMAÇÃO</a></td>
                						<td class="col-md-2 text-right"><a href="#" class="btn btn-success btn-xs btn-block">Inscrever-se</a></td>
                					</tr>
                				</table>
                				
                			</div>
                		
                			<div class="panel-heading"><h4><b>2º Período</b></h4></div>
                			<div class="panel-body text-justify collapse" id="periodo_1">
                				<table class="col-md-12 table table-hover table-condensed">
                					<tr>
                						<td class="col-md-10"><a href="#">ÁLGEBRA LINEAR E GEOMETRIA ANALÍTICA</a></td>
                						<td class="col-md-2 text-right"><a href="#" class="btn btn-success btn-xs btn-block">Inscrever-se</a></td>
                					</tr>
                					<tr>
                						<td class="col-md-10"><a href="#">ALGORITMOS E PROGRAMAÇÃO II</a></td>
                						<td class="col-md-2 text-right"><a href="#" class="btn btn-default btn-xs btn-block">Inscrito</a></td>
                					</tr>
                					<tr>
                						<td class="col-md-10"><a href="#">ARQUITETURA DE COMPUTADORES</a></td>
                						<td class="col-md-2 text-right"><a href="#" class="btn btn-success btn-xs btn-block">Inscrever-se</a></td>
                					</tr>
                					<tr>
                						<td class="col-md-10"><a href="#">ENGENHARIA DE REQUISITOS</a></td>
                						<td class="col-md-2 text-right"><a href="#" class="btn btn-default btn-xs btn-block">Inscrito</a></td>
                					</tr>
                					<tr>
                						<td class="col-md-10"><a href="#">INTERAÇÃO HOMEM-COMPUTADOR</a></td>
                						<td class="col-md-2 text-right"><a href="#" class="btn btn-success btn-xs btn-block">Inscrever-se</a></td>
                					</tr>
                					<tr>
                						<td class="col-md-10"><a href="#">LÍNGUA INGLESA</a></td>
                						<td class="col-md-2 text-right"><a href="#" class="btn btn-success btn-xs btn-block">Inscrever-se</a></td>
                					</tr>
                					<tr>
                						<td class="col-md-10"><a href="#">METODOLOGIA DO TRABALHO CIENTÍFICO</a></td>
                						<td class="col-md-2 text-right"><a href="#" class="btn btn-success btn-xs btn-block">Inscrever-se</a></td>
                					</tr>
                					<tr>
                						<td class="col-md-10"><a href="#">PROJETO INTERDISCIPLINAR I</a></td>
                						<td class="col-md-2 text-right"><a href="#" class="btn btn-success btn-xs btn-block">Inscrever-se</a></td>
                					</tr>
                				</table>
                				
                			</div>
                		
                			<div class="panel-heading"><h4><b>3º Período</b></h4></div>
                			<div class="panel-body text-justify collapse" id="periodo_1">
                				<table class="col-md-12 table table-hover table-condensed">
                					<tr>
                						<td class="col-md-10"><a href="#">CÁLCULO II</a></td>
                						<td class="col-md-2 text-right"><a href="#" class="btn btn-success btn-xs btn-block">Inscrever-se</a></td>
                					</tr>
                					<tr>
                						<td class="col-md-10"><a href="#">CIDADANIA, ÉTICA E ESPIRITUALIDADE</a></td>
                						<td class="col-md-2 text-right"><a href="#" class="btn btn-success btn-xs btn-block">Inscrever-se</a></td>
                					</tr>
                					<tr>
                						<td class="col-md-10"><a href="#">ESTRUTURA DE DADOS I</a></td>
                						<td class="col-md-2 text-right"><a href="#" class="btn btn-success btn-xs btn-block">Inscrever-se</a></td>
                					</tr>
                					<tr>
                						<td class="col-md-10"><a href="#">PROJETO DE BANCO DE DADOS</a></td>
                						<td class="col-md-2 text-right"><a href="#" class="btn btn-success btn-xs btn-block">Inscrever-se</a></td>
                					</tr>
                					<tr>
                						<td class="col-md-10"><a href="#">PROJETO INTERDISCIPLINAR II</a></td>
                						<td class="col-md-2 text-right"><a href="#" class="btn btn-success btn-xs btn-block">Inscrever-se</a></td>
                					</tr>
                					<tr>
                						<td class="col-md-10"><a href="#">SISTEMAS OPERACIONAIS</a></td>
                						<td class="col-md-2 text-right"><a href="#" class="btn btn-default btn-xs btn-block">Inscrito</a></td>
                					</tr>
                				</table>
                				
                			</div>
                		
                			<div class="panel-heading"><h4><b>4º Período</b></h4></div>
                			<div class="panel-body text-justify collapse" id="periodo_1">
                				<table class="col-md-12 table table-hover table-condensed">
                					<tr>
                						<td class="col-md-10"><a href="#">CÁLCULO NUMÉRICO</a></td>
                						<td class="col-md-2 text-right"><a href="#" class="btn btn-success btn-xs btn-block">Inscrever-se</a></td>
                					</tr>
                					<tr>
                						<td class="col-md-10"><a href="#">ESTRUTURA DE DADOS II</a></td>
                						<td class="col-md-2 text-right"><a href="#" class="btn btn-success btn-xs btn-block">Inscrever-se</a></td>
                					</tr>
                					<tr>
                						<td class="col-md-10"><a href="#">PARADIGMAS DE LINGUAGENS DE PROGRAMAÇÃO</a></td>
                						<td class="col-md-2 text-right"><a href="#" class="btn btn-success btn-xs btn-block">Inscrever-se</a></td>
                					</tr>
                					<tr>
                						<td class="col-md-10"><a href="#">PROJETO INTERDISCIPLINAR III</a></td>
                						<td class="col-md-2 text-right"><a href="#" class="btn btn-success btn-xs btn-block">Inscrever-se</a></td>
                					</tr>
                					<tr>
                						<td class="col-md-10"><a href="#">SISTEMAS GERENCIADORES DE BANCO DE DADOS</a></td>
                						<td class="col-md-2 text-right"><a href="#" class="btn btn-default btn-xs btn-block">Inscrito</a></td>
                					</tr>
                					<tr>
                						<td class="col-md-10"><a href="#">TEORIA DA COMPUTAÇÃO</a></td>
                						<td class="col-md-2 text-right"><a href="#" class="btn btn-success btn-xs btn-block">Inscrever-se</a></td>
                					</tr>
                				</table>
                				
                			</div>
                		
                			<div class="panel-heading"><h4><b>5º Período</b></h4></div>
                			<div class="panel-body text-justify collapse" id="periodo_1">
                				<table class="col-md-12 table table-hover table-condensed">
                					<tr>
                						<td class="col-md-10"><a href="#">ANÁLISE E PROJETO DE SOFTWARE</a></td>
                						<td class="col-md-2 text-right"><a href="#" class="btn btn-success btn-xs btn-block">Inscrever-se</a></td>
                					</tr>
                					<tr>
                						<td class="col-md-10"><a href="#">ARQUITETURA DE SOFTWARE</a></td>
                						<td class="col-md-2 text-right"><a href="#" class="btn btn-success btn-xs btn-block">Inscrever-se</a></td>
                					</tr>
                					<tr>
                						<td class="col-md-10"><a href="#">PROBABILIDADE E ESTATÍSTICA</a></td>
                						<td class="col-md-2 text-right"><a href="#" class="btn btn-success btn-xs btn-block">Inscrever-se</a></td>
                					</tr>
                					<tr>
                						<td class="col-md-10"><a href="#">PROGRAMAÇÃO ORIENTADA A OBJETOS</a></td>
                						<td class="col-md-2 text-right"><a href="#" class="btn btn-default btn-xs btn-block">Inscrito</a></td>
                					</tr>
                					<tr>
                						<td class="col-md-10"><a href="#">PROJETO INTERDISCIPLINAR IV</a></td>
                						<td class="col-md-2 text-right"><a href="#" class="btn btn-success btn-xs btn-block">Inscrever-se</a></td>
                					</tr>
                					<tr>
                						<td class="col-md-10"><a href="#">REDES DE COMPUTADORES</a></td>
                						<td class="col-md-2 text-right"><a href="#" class="btn btn-success btn-xs btn-block">Inscrever-se</a></td>
                					</tr>
                				</table>
                				
                			</div>
                		
                			<div class="panel-heading"><h4><b>6º Período</b></h4></div>
                			<div class="panel-body text-justify collapse" id="periodo_1">
                				<table class="col-md-12 table table-hover table-condensed">
                					<tr>
                						<td class="col-md-10"><a href="#">ANÁLISE E COMPLEXIDADE DE ALGORITMOS</a></td>
                						<td class="col-md-2 text-right"><a href="#" class="btn btn-default btn-xs btn-block">Inscrito</a></td>
                					</tr>
                					<tr>
                						<td class="col-md-10"><a href="#">FUNDAMENTOS DE ADMINISTRAÇÃO</a></td>
                						<td class="col-md-2 text-right"><a href="#" class="btn btn-success btn-xs btn-block">Inscrever-se</a></td>
                					</tr>
                					<tr>
                						<td class="col-md-10"><a href="#">PROGRAMAÇÃO E TECNOLOGIAS PARA WEB</a></td>
                						<td class="col-md-2 text-right"><a href="#" class="btn btn-success btn-xs btn-block">Inscrever-se</a></td>
                					</tr>
                					<tr>
                						<td class="col-md-10"><a href="#">PROJETO INTERDISCIPLINAR V</a></td>
                						<td class="col-md-2 text-right"><a href="#" class="btn btn-success btn-xs btn-block">Inscrever-se</a></td>
                					</tr>
                					<tr>
                						<td class="col-md-10"><a href="#">QUALIDADE DE SOFTWARE</a></td>
                						<td class="col-md-2 text-right"><a href="#" class="btn btn-success btn-xs btn-block">Inscrever-se</a></td>
                					</tr>
                					<tr>
                						<td class="col-md-10"><a href="#">SISTEMAS DISTRIBUÍDOS</a></td>
                						<td class="col-md-2 text-right"><a href="#" class="btn btn-default btn-xs btn-block">Inscrito</a></td>
                					</tr>
                				</table>
                				
                			</div>
                		
                			<div class="panel-heading"><h4><b>7º Período</b></h4></div>
                			<div class="panel-body text-justify collapse" id="periodo_1">
                				<table class="col-md-12 table table-hover table-condensed">
                					<tr>
                						<td class="col-md-10"><a href="#">COMPUTAÇÃO GRÁFICA</a></td>
                						<td class="col-md-2 text-right"><a href="#" class="btn btn-default btn-xs btn-block">Inscrito</a></td>
                					</tr>
                					<tr>
                						<td class="col-md-10"><a href="#">ESTIMATIVAS DE ESFORÇO EM PROJETOS DE SOFTWARE</a></td>
                						<td class="col-md-2 text-right"><a href="#" class="btn btn-success btn-xs btn-block">Inscrever-se</a></td>
                					</tr>
                					<tr>
                						<td class="col-md-10"><a href="#">FÍSICA E ELETRICIDADE</a></td>
                						<td class="col-md-2 text-right"><a href="#" class="btn btn-success btn-xs btn-block">Inscrever-se</a></td>
                					</tr>
                					<tr>
                						<td class="col-md-10"><a href="#">GERÊNCIA DE CONFIGURAÇÃO DE SOFTWARE</a></td>
                						<td class="col-md-2 text-right"><a href="#" class="btn btn-success btn-xs btn-block">Inscrever-se</a></td>
                					</tr>
                					<tr>
                						<td class="col-md-10"><a href="#">GERÊNCIA DE PROJETO DE SOFTWARE</a></td>
                						<td class="col-md-2 text-right"><a href="#" class="btn btn-success btn-xs btn-block">Inscrever-se</a></td>
                					</tr>
                					<tr>
                						<td class="col-md-10"><a href="/cursos/unievangelica/engenharia-de-computacao/projeto-interdiciplinar-vi">PROJETO INTERDISCIPLINAR VI</a></td>
                						<td class="col-md-2 text-right"><a href="#" class="btn btn-default btn-xs btn-block">Inscrito</a></td>
                					</tr>
                					<tr>
                						<td class="col-md-10"><a href="#">VERIFICAÇÃO E VALIDAÇÃO</a></td>
                						<td class="col-md-2 text-right"><a href="#" class="btn btn-default btn-xs btn-block">Inscrito</a></td>
                					</tr>
                				</table>
                				
                			</div>
                		
                			<div class="panel-heading"><h4><b>8º Período</b></h4></div>
                			<div class="panel-body text-justify collapse" id="periodo_1">
                				<table class="col-md-12 table table-hover table-condensed">
                					<tr>
                						<td class="col-md-10"><a href="#">CIRCUITOS DIGITAIS</a></td>
                						<td class="col-md-2 text-right"><a href="#" class="btn btn-success btn-xs btn-block">Inscrever-se</a></td>
                					</tr>
                					<tr>
                						<td class="col-md-10"><a href="#">LINGUAGENS FORMAIS E AUTÔMATOS</a></td>
                						<td class="col-md-2 text-right"><a href="#" class="btn btn-default btn-xs btn-block">Inscrito</a></td>
                					</tr>
                					<tr>
                						<td class="col-md-10"><a href="#">MÉTODOS E TÉCNICAS DE PESQUISA PARA COMPUTAÇÃO</a></td>
                						<td class="col-md-2 text-right"><a href="#" class="btn btn-success btn-xs btn-block">Inscrever-se</a></td>
                					</tr>
                					<tr>
                						<td class="col-md-10"><a href="#">PRÁTICA EM FÁBRICA DE SOFTWARE I</a></td>
                						<td class="col-md-2 text-right"><a href="#" class="btn btn-default btn-xs btn-block">Inscrito</a></td>
                					</tr>
                					<tr>
                						<td class="col-md-10"><a href="#">PROCESSAMENTO DE IMAGENS</a></td>
                						<td class="col-md-2 text-right"><a href="#" class="btn btn-default btn-xs btn-block">Inscrito</a></td>
                					</tr>
                					<tr>
                						<td class="col-md-10"><a href="#">PROJETO INTERDISCIPLINAR VII</a></td>
                						<td class="col-md-2 text-right"><a href="#" class="btn btn-success btn-xs btn-block">Inscrever-se</a></td>
                					</tr>
                					<tr>
                						<td class="col-md-10"><a href="#">TECNOLOGIA E MEIO AMBIENTE</a></td>
                						<td class="col-md-2 text-right"><a href="#" class="btn btn-success btn-xs btn-block">Inscrever-se</a></td>
                					</tr>
                				</table>
                				
                			</div>
                		
                			<div class="panel-heading"><h4><b>9º Período</b></h4></div>
                			<div class="panel-body text-justify collapse" id="periodo_1">
                				<table class="col-md-12 table table-hover table-condensed">
                					<tr>
                						<td class="col-md-10"><a href="#">COMPILADORES</a></td>
                						<td class="col-md-2 text-right"><a href="#" class="btn btn-default btn-xs btn-block">Inscrito</a></td>
                					</tr>
                					<tr>
                						<td class="col-md-10"><a href="#">EMPREENDEDORISMO</a></td>
                						<td class="col-md-2 text-right"><a href="#" class="btn btn-success btn-xs btn-block">Inscrever-se</a></td>
                					</tr>
                					<tr>
                						<td class="col-md-10"><a href="#">ESTÁGIO PROFISSIONAL I</a></td>
                						<td class="col-md-2 text-right"><a href="#" class="btn btn-success btn-xs btn-block">Inscrever-se</a></td>
                					</tr>
                					<tr>
                						<td class="col-md-10"><a href="#">PRÁTICA EM FÁBRICA DE SOFTWARE II</a></td>
                						<td class="col-md-2 text-right"><a href="#" class="btn btn-default btn-xs btn-block">Inscrito</a></td>
                					</tr>
                					<tr>
                						<td class="col-md-10"><a href="#">SEGURANÇA</a></td>
                						<td class="col-md-2 text-right"><a href="#" class="btn btn-success btn-xs btn-block">Inscrever-se</a></td>
                					</tr>
                					<tr>
                						<td class="col-md-10"><a href="#">TRABALHO DE CONCLUSÃO DE CURSO I</a></td>
                						<td class="col-md-2 text-right"><a href="#" class="btn btn-success btn-xs btn-block">Inscrever-se</a></td>
                					</tr>
                				</table>
                				
                			</div>
                		
                			<div class="panel-heading"><h4><b>10º Período</b></h4></div>
                			<div class="panel-body text-justify collapse" id="periodo_1">
                				<table class="col-md-12 table table-hover table-condensed">
                					<tr>
                						<td class="col-md-10"><a href="#">ESTÁGIO PROFISSIONAL II</a></td>
                						<td class="col-md-2 text-right"><a href="#" class="btn btn-success btn-xs btn-block">Inscrever-se</a></td>
                					</tr>
                					<tr>
                						<td class="col-md-10"><a href="#">ÉTICA E LEGISLAÇÃO APLICADA</a></td>
                						<td class="col-md-2 text-right"><a href="#" class="btn btn-success btn-xs btn-block">Inscrever-se</a></td>
                					</tr>
                					<tr>
                						<td class="col-md-10"><a href="#">INTELIGÊNCIA ARTIFICIAL</a></td>
                						<td class="col-md-2 text-right"><a href="#" class="btn btn-default btn-xs btn-block">Inscrito</a></td>
                					</tr>
                					<tr>
                						<td class="col-md-10"><a href="#">OPTATIVA</a></td>
                						<td class="col-md-2 text-right"><a href="#" class="btn btn-success btn-xs btn-block">Inscrever-se</a></td>
                					</tr>
                					<tr>
                						<td class="col-md-10"><a href="#">PRÁTICA EM FÁBRICA DE SOFTWARE III</a></td>
                						<td class="col-md-2 text-right"><a href="#" class="btn btn-default btn-xs btn-block">Inscrito</a></td>
                					</tr>
                					<tr>
                						<td class="col-md-10"><a href="#">TRABALHO DE CONCLUSÃO DE CURSO II</a></td>
                						<td class="col-md-2 text-right"><a href="#" class="btn btn-success btn-xs btn-block">Inscrever-se</a></td>
                					</tr>
                				</table>
                				
                			</div>
                		</div>
                	</c:if>
                <!-- FIM AREA DISCIPLINAS -->
                
                <!-- AREA SOBRE -->
                	<c:if test="${mode == 'MODE_SOBRE'}">
                		<div class="row panel panel-default">
                			<div class="panel-heading"><h4><b>Sobre</b></h4></div>
                			<div class="panel-body text-justify">
                				<p>
                					O curso de Engenharia de Computação da UniEVANGÉLICA objetiva formar profissionais devidamente qualificados, aptos a atuarem nas etapas do processo de produção de software, com formação adequada para ocupar as vagas disponíveis no mercado de trabalho e contribuir para o desenvolvimento tecnológico e econômico do país, quais sejam: desenvolvedor de software, analista de requisitos, analista de negócios, arquiteto de software, entre outras.
                				</p>
                				<p>
                					O curso visa contribuir com a formação de profissionais qualificados para se inserir nos mercados local, nacional e global da indústria de software e preencher a atual lacuna de formação tecnológica específica em Engenharia de Software, não preenchida nos cursos de graduação em computação (Sistemas de Informação, Ciência da Computação e Engenharia da Computação com ênfase em Eletrônica e Hardware).
                				</p>
                			</div>
                		</div>
                	</c:if>
                <!-- FIM AREA SOBRE -->
                
            </div>
        </div>
    </body>
</html>
