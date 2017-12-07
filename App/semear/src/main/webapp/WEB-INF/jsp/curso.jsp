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
<!-- 						        <h3><a href="#" class=""><b>Engenharia de Computa��o</b></a> </h3> -->
<!-- 						      </div> -->
<!-- 						      <a href="#" class="btn btn-success btn-lg btn-block">Inscrever-se</a> -->
						    </div>
						  </div>
                        
                        <div class="col-md-8">
                                <dl>
                                    <dt>Institui��o</dt>
                                    <dd>
                                    	<a href="/cursos/unievangelica">UniEVANGELICA - Centro Universit�rio</a>
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
							      <a class="navbar-brand" href="/cursos/unievangelica/engenharia-de-computacao"><b>Engenharia de Computa��o</b></a>
							    </div>
							    <ul class="nav navbar-nav navbar-right nav-tabs">
							      <li <c:if test="${mode == 'MODE_PUBLICACOES'}"> class="active" </c:if>><a href="/cursos/unievangelica/engenharia-de-computacao">Publica��es</a></li>
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
                		
                			<div class="panel-heading"><h4><b>1� Per�odo</b></h4></div>
                			<div class="panel-body text-justify collapse" id="periodo_1">
                				<table class="col-md-12 table table-hover table-condensed">
                					<tr>	
                						<td class="col-md-10"><a href="#">ALGORITMOS E PROGRAMA��O I</a></td>
                						<td class="col-md-2 text-right"><a href="#" class="btn btn-default btn-xs btn-block">Inscrito</a></td>
                					</tr>
                					<tr>
                						<td class="col-md-10"><a href="#">C�LCULO I</a></td>
                						<td class="col-md-2 text-right"><a href="#" class="btn btn-success btn-xs btn-block">Inscrever-se</a></td>
                					</tr>
                					<tr>
                						<td class="col-md-10"><a href="#">FUNDAMENTOS EM ENGENHARIA DE SOFTWARE</a></td>
                						<td class="col-md-2 text-right"><a href="#" class="btn btn-success btn-xs btn-block">Inscrever-se</a></td>
                					</tr>
                					<tr>
                						<td class="col-md-10"><a href="#">L�NGUA PORTUGUESA</a></td>
                						<td class="col-md-2 text-right"><a href="#" class="btn btn-success btn-xs btn-block">Inscrever-se</a></td>
                					</tr>
                					<tr>
                						<td class="col-md-10"><a href="#">L�GICA</a></td>
                						<td class="col-md-2 text-right"><a href="#" class="btn btn-success btn-xs btn-block">Inscrever-se</a></td>
                					</tr>
                					<tr>
                						<td class="col-md-10"><a href="#">SOCIEDADE DA INFORMA��O</a></td>
                						<td class="col-md-2 text-right"><a href="#" class="btn btn-success btn-xs btn-block">Inscrever-se</a></td>
                					</tr>
                				</table>
                				
                			</div>
                		
                			<div class="panel-heading"><h4><b>2� Per�odo</b></h4></div>
                			<div class="panel-body text-justify collapse" id="periodo_1">
                				<table class="col-md-12 table table-hover table-condensed">
                					<tr>
                						<td class="col-md-10"><a href="#">�LGEBRA LINEAR E GEOMETRIA ANAL�TICA</a></td>
                						<td class="col-md-2 text-right"><a href="#" class="btn btn-success btn-xs btn-block">Inscrever-se</a></td>
                					</tr>
                					<tr>
                						<td class="col-md-10"><a href="#">ALGORITMOS E PROGRAMA��O II</a></td>
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
                						<td class="col-md-10"><a href="#">INTERA��O HOMEM-COMPUTADOR</a></td>
                						<td class="col-md-2 text-right"><a href="#" class="btn btn-success btn-xs btn-block">Inscrever-se</a></td>
                					</tr>
                					<tr>
                						<td class="col-md-10"><a href="#">L�NGUA INGLESA</a></td>
                						<td class="col-md-2 text-right"><a href="#" class="btn btn-success btn-xs btn-block">Inscrever-se</a></td>
                					</tr>
                					<tr>
                						<td class="col-md-10"><a href="#">METODOLOGIA DO TRABALHO CIENT�FICO</a></td>
                						<td class="col-md-2 text-right"><a href="#" class="btn btn-success btn-xs btn-block">Inscrever-se</a></td>
                					</tr>
                					<tr>
                						<td class="col-md-10"><a href="#">PROJETO INTERDISCIPLINAR I</a></td>
                						<td class="col-md-2 text-right"><a href="#" class="btn btn-success btn-xs btn-block">Inscrever-se</a></td>
                					</tr>
                				</table>
                				
                			</div>
                		
                			<div class="panel-heading"><h4><b>3� Per�odo</b></h4></div>
                			<div class="panel-body text-justify collapse" id="periodo_1">
                				<table class="col-md-12 table table-hover table-condensed">
                					<tr>
                						<td class="col-md-10"><a href="#">C�LCULO II</a></td>
                						<td class="col-md-2 text-right"><a href="#" class="btn btn-success btn-xs btn-block">Inscrever-se</a></td>
                					</tr>
                					<tr>
                						<td class="col-md-10"><a href="#">CIDADANIA, �TICA E ESPIRITUALIDADE</a></td>
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
                		
                			<div class="panel-heading"><h4><b>4� Per�odo</b></h4></div>
                			<div class="panel-body text-justify collapse" id="periodo_1">
                				<table class="col-md-12 table table-hover table-condensed">
                					<tr>
                						<td class="col-md-10"><a href="#">C�LCULO NUM�RICO</a></td>
                						<td class="col-md-2 text-right"><a href="#" class="btn btn-success btn-xs btn-block">Inscrever-se</a></td>
                					</tr>
                					<tr>
                						<td class="col-md-10"><a href="#">ESTRUTURA DE DADOS II</a></td>
                						<td class="col-md-2 text-right"><a href="#" class="btn btn-success btn-xs btn-block">Inscrever-se</a></td>
                					</tr>
                					<tr>
                						<td class="col-md-10"><a href="#">PARADIGMAS DE LINGUAGENS DE PROGRAMA��O</a></td>
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
                						<td class="col-md-10"><a href="#">TEORIA DA COMPUTA��O</a></td>
                						<td class="col-md-2 text-right"><a href="#" class="btn btn-success btn-xs btn-block">Inscrever-se</a></td>
                					</tr>
                				</table>
                				
                			</div>
                		
                			<div class="panel-heading"><h4><b>5� Per�odo</b></h4></div>
                			<div class="panel-body text-justify collapse" id="periodo_1">
                				<table class="col-md-12 table table-hover table-condensed">
                					<tr>
                						<td class="col-md-10"><a href="#">AN�LISE E PROJETO DE SOFTWARE</a></td>
                						<td class="col-md-2 text-right"><a href="#" class="btn btn-success btn-xs btn-block">Inscrever-se</a></td>
                					</tr>
                					<tr>
                						<td class="col-md-10"><a href="#">ARQUITETURA DE SOFTWARE</a></td>
                						<td class="col-md-2 text-right"><a href="#" class="btn btn-success btn-xs btn-block">Inscrever-se</a></td>
                					</tr>
                					<tr>
                						<td class="col-md-10"><a href="#">PROBABILIDADE E ESTAT�STICA</a></td>
                						<td class="col-md-2 text-right"><a href="#" class="btn btn-success btn-xs btn-block">Inscrever-se</a></td>
                					</tr>
                					<tr>
                						<td class="col-md-10"><a href="#">PROGRAMA��O ORIENTADA A OBJETOS</a></td>
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
                		
                			<div class="panel-heading"><h4><b>6� Per�odo</b></h4></div>
                			<div class="panel-body text-justify collapse" id="periodo_1">
                				<table class="col-md-12 table table-hover table-condensed">
                					<tr>
                						<td class="col-md-10"><a href="#">AN�LISE E COMPLEXIDADE DE ALGORITMOS</a></td>
                						<td class="col-md-2 text-right"><a href="#" class="btn btn-default btn-xs btn-block">Inscrito</a></td>
                					</tr>
                					<tr>
                						<td class="col-md-10"><a href="#">FUNDAMENTOS DE ADMINISTRA��O</a></td>
                						<td class="col-md-2 text-right"><a href="#" class="btn btn-success btn-xs btn-block">Inscrever-se</a></td>
                					</tr>
                					<tr>
                						<td class="col-md-10"><a href="#">PROGRAMA��O E TECNOLOGIAS PARA WEB</a></td>
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
                						<td class="col-md-10"><a href="#">SISTEMAS DISTRIBU�DOS</a></td>
                						<td class="col-md-2 text-right"><a href="#" class="btn btn-default btn-xs btn-block">Inscrito</a></td>
                					</tr>
                				</table>
                				
                			</div>
                		
                			<div class="panel-heading"><h4><b>7� Per�odo</b></h4></div>
                			<div class="panel-body text-justify collapse" id="periodo_1">
                				<table class="col-md-12 table table-hover table-condensed">
                					<tr>
                						<td class="col-md-10"><a href="#">COMPUTA��O GR�FICA</a></td>
                						<td class="col-md-2 text-right"><a href="#" class="btn btn-default btn-xs btn-block">Inscrito</a></td>
                					</tr>
                					<tr>
                						<td class="col-md-10"><a href="#">ESTIMATIVAS DE ESFOR�O EM PROJETOS DE SOFTWARE</a></td>
                						<td class="col-md-2 text-right"><a href="#" class="btn btn-success btn-xs btn-block">Inscrever-se</a></td>
                					</tr>
                					<tr>
                						<td class="col-md-10"><a href="#">F�SICA E ELETRICIDADE</a></td>
                						<td class="col-md-2 text-right"><a href="#" class="btn btn-success btn-xs btn-block">Inscrever-se</a></td>
                					</tr>
                					<tr>
                						<td class="col-md-10"><a href="#">GER�NCIA DE CONFIGURA��O DE SOFTWARE</a></td>
                						<td class="col-md-2 text-right"><a href="#" class="btn btn-success btn-xs btn-block">Inscrever-se</a></td>
                					</tr>
                					<tr>
                						<td class="col-md-10"><a href="#">GER�NCIA DE PROJETO DE SOFTWARE</a></td>
                						<td class="col-md-2 text-right"><a href="#" class="btn btn-success btn-xs btn-block">Inscrever-se</a></td>
                					</tr>
                					<tr>
                						<td class="col-md-10"><a href="/cursos/unievangelica/engenharia-de-computacao/projeto-interdiciplinar-vi">PROJETO INTERDISCIPLINAR VI</a></td>
                						<td class="col-md-2 text-right"><a href="#" class="btn btn-default btn-xs btn-block">Inscrito</a></td>
                					</tr>
                					<tr>
                						<td class="col-md-10"><a href="#">VERIFICA��O E VALIDA��O</a></td>
                						<td class="col-md-2 text-right"><a href="#" class="btn btn-default btn-xs btn-block">Inscrito</a></td>
                					</tr>
                				</table>
                				
                			</div>
                		
                			<div class="panel-heading"><h4><b>8� Per�odo</b></h4></div>
                			<div class="panel-body text-justify collapse" id="periodo_1">
                				<table class="col-md-12 table table-hover table-condensed">
                					<tr>
                						<td class="col-md-10"><a href="#">CIRCUITOS DIGITAIS</a></td>
                						<td class="col-md-2 text-right"><a href="#" class="btn btn-success btn-xs btn-block">Inscrever-se</a></td>
                					</tr>
                					<tr>
                						<td class="col-md-10"><a href="#">LINGUAGENS FORMAIS E AUT�MATOS</a></td>
                						<td class="col-md-2 text-right"><a href="#" class="btn btn-default btn-xs btn-block">Inscrito</a></td>
                					</tr>
                					<tr>
                						<td class="col-md-10"><a href="#">M�TODOS E T�CNICAS DE PESQUISA PARA COMPUTA��O</a></td>
                						<td class="col-md-2 text-right"><a href="#" class="btn btn-success btn-xs btn-block">Inscrever-se</a></td>
                					</tr>
                					<tr>
                						<td class="col-md-10"><a href="#">PR�TICA EM F�BRICA DE SOFTWARE I</a></td>
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
                		
                			<div class="panel-heading"><h4><b>9� Per�odo</b></h4></div>
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
                						<td class="col-md-10"><a href="#">EST�GIO PROFISSIONAL I</a></td>
                						<td class="col-md-2 text-right"><a href="#" class="btn btn-success btn-xs btn-block">Inscrever-se</a></td>
                					</tr>
                					<tr>
                						<td class="col-md-10"><a href="#">PR�TICA EM F�BRICA DE SOFTWARE II</a></td>
                						<td class="col-md-2 text-right"><a href="#" class="btn btn-default btn-xs btn-block">Inscrito</a></td>
                					</tr>
                					<tr>
                						<td class="col-md-10"><a href="#">SEGURAN�A</a></td>
                						<td class="col-md-2 text-right"><a href="#" class="btn btn-success btn-xs btn-block">Inscrever-se</a></td>
                					</tr>
                					<tr>
                						<td class="col-md-10"><a href="#">TRABALHO DE CONCLUS�O DE CURSO I</a></td>
                						<td class="col-md-2 text-right"><a href="#" class="btn btn-success btn-xs btn-block">Inscrever-se</a></td>
                					</tr>
                				</table>
                				
                			</div>
                		
                			<div class="panel-heading"><h4><b>10� Per�odo</b></h4></div>
                			<div class="panel-body text-justify collapse" id="periodo_1">
                				<table class="col-md-12 table table-hover table-condensed">
                					<tr>
                						<td class="col-md-10"><a href="#">EST�GIO PROFISSIONAL II</a></td>
                						<td class="col-md-2 text-right"><a href="#" class="btn btn-success btn-xs btn-block">Inscrever-se</a></td>
                					</tr>
                					<tr>
                						<td class="col-md-10"><a href="#">�TICA E LEGISLA��O APLICADA</a></td>
                						<td class="col-md-2 text-right"><a href="#" class="btn btn-success btn-xs btn-block">Inscrever-se</a></td>
                					</tr>
                					<tr>
                						<td class="col-md-10"><a href="#">INTELIG�NCIA ARTIFICIAL</a></td>
                						<td class="col-md-2 text-right"><a href="#" class="btn btn-default btn-xs btn-block">Inscrito</a></td>
                					</tr>
                					<tr>
                						<td class="col-md-10"><a href="#">OPTATIVA</a></td>
                						<td class="col-md-2 text-right"><a href="#" class="btn btn-success btn-xs btn-block">Inscrever-se</a></td>
                					</tr>
                					<tr>
                						<td class="col-md-10"><a href="#">PR�TICA EM F�BRICA DE SOFTWARE III</a></td>
                						<td class="col-md-2 text-right"><a href="#" class="btn btn-default btn-xs btn-block">Inscrito</a></td>
                					</tr>
                					<tr>
                						<td class="col-md-10"><a href="#">TRABALHO DE CONCLUS�O DE CURSO II</a></td>
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
                					O curso de Engenharia de Computa��o da UniEVANG�LICA objetiva formar profissionais devidamente qualificados, aptos a atuarem nas etapas do processo de produ��o de software, com forma��o adequada para ocupar as vagas dispon�veis no mercado de trabalho e contribuir para o desenvolvimento tecnol�gico e econ�mico do pa�s, quais sejam: desenvolvedor de software, analista de requisitos, analista de neg�cios, arquiteto de software, entre outras.
                				</p>
                				<p>
                					O curso visa contribuir com a forma��o de profissionais qualificados para se inserir nos mercados local, nacional e global da ind�stria de software e preencher a atual lacuna de forma��o tecnol�gica espec�fica em Engenharia de Software, n�o preenchida nos cursos de gradua��o em computa��o (Sistemas de Informa��o, Ci�ncia da Computa��o e Engenharia da Computa��o com �nfase em Eletr�nica e Hardware).
                				</p>
                			</div>
                		</div>
                	</c:if>
                <!-- FIM AREA SOBRE -->
                
            </div>
        </div>
    </body>
</html>
