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
						    <a href="#" class=""><img src="/static/Perfis/pefil-default.png"></a>
						    </div>
						  </div>
                        
<!--                         <div class="col-md-8"> -->
<!--                                 <dl> -->
<!--                                     <dt>Institui��o</dt> -->
<!--                                     <dd> -->
<!--                                     	<p>UniEVANGELICA - Centro Univercit�rio</p> -->
<!--                                     </dd> -->
<!--                                     <dt>Curso</dt> -->
<!--                                     <dd> -->
<!--                                     	<p><a class="" href="/cursos/unievangelica/engenharia-de-computacao">Engenharia de Computa��o</a></p> -->
<!--                                     </dd> -->
<!--                                     <dt>Carga Hor�ria</dt> -->
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
							      <a class="navbar-brand" href="/${SPRING_SECURITY_CONTEXT.authentication.principal.username}"><b>${SPRING_SECURITY_CONTEXT.authentication.principal.usuario.nome} ${SPRING_SECURITY_CONTEXT.authentication.principal.usuario.sobrenome}</b></a>
							    </div>
							    <ul class="nav navbar-nav navbar-right nav-tabs">
							      <li <c:if test="${mode == 'MODE_PUBLICACOES'}"> class="active" </c:if>><a href="/${SPRING_SECURITY_CONTEXT.authentication.principal.username}">Publica��es</a></li>
							      <li <c:if test="${mode == 'MODE_SOBRE'}"> class="active" </c:if>><a href="/${SPRING_SECURITY_CONTEXT.authentication.principal.username}?pagina=sobre">Sobre</a></li>
							      <li <c:if test="${mode == 'MODE_INSCRICOES'}"> class="active" </c:if>><a href="/${SPRING_SECURITY_CONTEXT.authentication.principal.username}?pagina=inscricoes">Inscri��es</a></li>
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
                
                <!-- AREA INSCRICOES -->
                	<c:if test="${mode == 'MODE_INSCRICOES'}">
                	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
                	<script type="text/javascript">
                	$( function() {
                	    $( "#accordion" ).accordion({
                	      heightStyle: "content",
                	      active: false,
                	      collapsible: true
                	    });
                	  } );
                	</script>
                	
                		<div id="accordion" class="row panel panel-default">
                		
                			<div class="panel-heading"><h4><b>Engenharia Civil</b></h4></div>
                			<div class="panel-body text-justify collapse"></div>
                			
                			<div class="panel-heading"><h4><b>Engenharia de Computa��o</b></h4></div>
                			<div class="panel-body text-justify collapse in">
                				<table class="col-md-12 table table-hover table-condensed">
                					<tr>	
                						<td class="col-md-10"><a href="#">ALGORITMOS E PROGRAMA��O I</a></td>
                						<td class="col-md-2 text-right"><a href="#" class="btn btn-default btn-xs btn-block">Inscrito</a></td>
                					</tr>
                					<tr>
                						<td class="col-md-10"><a href="#">ALGORITMOS E PROGRAMA��O II</a></td>
                						<td class="col-md-2 text-right"><a href="#" class="btn btn-default btn-xs btn-block">Inscrito</a></td>
                					</tr>
                					<tr>
                						<td class="col-md-10"><a href="#">ENGENHARIA DE REQUISITOS</a></td>
                						<td class="col-md-2 text-right"><a href="#" class="btn btn-default btn-xs btn-block">Inscrito</a></td>
                					</tr>
                					<tr>
                						<td class="col-md-10"><a href="#">SISTEMAS OPERACIONAIS</a></td>
                						<td class="col-md-2 text-right"><a href="#" class="btn btn-default btn-xs btn-block">Inscrito</a></td>
                					</tr>
                					<tr>
                						<td class="col-md-10"><a href="#">SISTEMAS GERENCIADORES DE BANCO DE DADOS</a></td>
                						<td class="col-md-2 text-right"><a href="#" class="btn btn-default btn-xs btn-block">Inscrito</a></td>
                					</tr>
                					<tr>
                						<td class="col-md-10"><a href="#">PROGRAMA��O ORIENTADA A OBJETOS</a></td>
                						<td class="col-md-2 text-right"><a href="#" class="btn btn-default btn-xs btn-block">Inscrito</a></td>
                					</tr>
                					<tr>
                						<td class="col-md-10"><a href="#">AN�LISE E COMPLEXIDADE DE ALGORITMOS</a></td>
                						<td class="col-md-2 text-right"><a href="#" class="btn btn-default btn-xs btn-block">Inscrito</a></td>
                					</tr>
                					<tr>
                						<td class="col-md-10"><a href="#">SISTEMAS DISTRIBU�DOS</a></td>
                						<td class="col-md-2 text-right"><a href="#" class="btn btn-default btn-xs btn-block">Inscrito</a></td>
                					</tr>
                					<tr>
                						<td class="col-md-10"><a href="#">COMPUTA��O GR�FICA</a></td>
                						<td class="col-md-2 text-right"><a href="#" class="btn btn-default btn-xs btn-block">Inscrito</a></td>
                					</tr>
                					<tr>
                						<td class="col-md-10"><a href="/cursos/unievangelica/engenharia-de-computacao/projeto-interdiciplinar-vi">PROJETO INTERDISCIPLINAR VI</a></td>
                						<td class="col-md-2 text-right"><a href="#" class="btn btn-default btn-xs btn-block">Inscrito</a></td>
                					</tr>
                					<tr>
                						<td class="col-md-10"><a href="#">VERIFICA��O E VALIDA��O</a></td>
                						<td class="col-md-2 text-right"><a href="#" class="btn btn-default btn-xs btn-block">Inscrito</a></td>
                					</tr>
                					<tr>
                						<td class="col-md-10"><a href="#">LINGUAGENS FORMAIS E AUT�MATOS</a></td>
                						<td class="col-md-2 text-right"><a href="#" class="btn btn-default btn-xs btn-block">Inscrito</a></td>
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
                						<td class="col-md-10"><a href="#">COMPILADORES</a></td>
                						<td class="col-md-2 text-right"><a href="#" class="btn btn-default btn-xs btn-block">Inscrito</a></td>
                					</tr>
                					<tr>
                						<td class="col-md-10"><a href="#">PR�TICA EM F�BRICA DE SOFTWARE II</a></td>
                						<td class="col-md-2 text-right"><a href="#" class="btn btn-default btn-xs btn-block">Inscrito</a></td>
                					</tr>
                					<tr>
                						<td class="col-md-10"><a href="#">INTELIG�NCIA ARTIFICIAL</a></td>
                						<td class="col-md-2 text-right"><a href="#" class="btn btn-default btn-xs btn-block">Inscrito</a></td>
                					</tr>
                					<tr>
                						<td class="col-md-10"><a href="#">PR�TICA EM F�BRICA DE SOFTWARE III</a></td>
                						<td class="col-md-2 text-right"><a href="#" class="btn btn-default btn-xs btn-block">Inscrito</a></td>
                					</tr>
                				</table>
                				
                			</div>
                		
                			<div class="panel-heading"><h4><b>Engenharia de Software</b></h4></div>
                			<div class="panel-body text-justify collapse"></div>
                		</div>
                	</c:if>
                <!-- FIM AREA INSCRICOES -->
                
                <!-- AREA SOBRE -->
                	<c:if test="${mode == 'MODE_SOBRE'}">
                		<div class="row panel panel-default">
                			<div class="panel-heading"><h4><b>Sobre</b></h4></div>
                			<div class="panel-body text-justify">
                				<dl>
                                    <dt>Forma��o</dt>
                                    <dd>
                                    	<p>
                                    		Cursando 7� Per�odo de 
                                    		<a href="/cursos/unievangelica/engenharia-de-computacao">Engenharia de Computa��o</a> na 
                                    		<a href="/cursos/unievangelica">UniEVANGELICA - Centro Universit�rio</a>
                                    	</p>
                                    </dd>
                                    <dt>Perfil</dt>
                                    <dd>
                                    	<p>
                                    		Desenvolvedor Back-End e ainda aprendiz em Front-end e designer UX / UI, mas com muita for�a de vontade e dedica��o. Dedicado � programa��o Orientada a Objetos e em breve � programa��o funcional. Desenvolvedor Web - Designer de Experi�ncia do Usu�rio - Artista Gr�fico

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
