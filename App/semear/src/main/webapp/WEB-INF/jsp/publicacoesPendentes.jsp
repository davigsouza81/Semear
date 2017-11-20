<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <%@include file="componentes/head.jsp" %>
    </head>
    <body>
        <%@include file="componentes/menuTop.jsp" %>
        <div class="container">
            <%@include file="componentes/menuSidebar.jsp" %>

            <div class="col-md-9">
                <!--Time line Publicacao de Trabalho--> 
                <div class="row publication">
						<div class="row">
		<div class="col-md-12">
			<div class="media">
				<div class="media-left">
					<a href="#" class=""><img style="width: 40px"src="/static/Perfis/pefil-default.png"></a>
				</div>
				<div class="media-body">
					<div class="media-heading">
						<a href="#" class=""><b>Davi Souza</b></a> <cite>Publicou
							um documumento em </cite> <a href="/cursos/unievangelica/engenharia-de-computacao/projeto-interdiciplinar-vi"><b>Projeto Interdiciplinar VI</b></a>
						<br /> <span class="">17 de setembro de 2017</span>
					</div>
				</div>
			</div>



		</div>
	</div>
	<div class="row">
		<div class="col-md-4" style="margin-top: 15px;">
			<a href="#">
				<div class="col-md-5">
					<img src="/static/icons/word.ico"
						style="width: 100%;">
				</div>
				<div class="col-md-7">
					<span>Documento de descrição de casos de uso.docx</span>
				</div>
			</a>
		</div>
		<div class="col-md-8">
			<blockquote>
				<dl class="">
					<dt>Descrição</dt>
					<dd>O Diagrama de Caso de Uso na UML é um diagrama
						comportamental. O principal mesmo nem é o diagrama (parte
						gráfica), mas sim a especificação do caso de uso (o que tem
						?dentro de cada bolinha?), a descrição dos seus cenários.</dd>
					<dt>Tags</dt>
					<dd>
						<a href="#" class="btn btn-default">#teg1</a> <a href="#"
							class="btn btn-default">#teg2</a> <a href="#"
							class="btn btn-default">#teg3</a> <a href="#"
							class="btn btn-default">#teg4</a> <a href="#"
							class="btn btn-default">#teg5</a> <a href="#"
							class="btn btn-default">#teg6</a> <a href="#"
							class="btn btn-default">#teg7</a> <a href="#"
							class="btn btn-default">#teg8</a> <a href="#"
							class="btn btn-default">#teg9</a> <a href="#"
							class="btn btn-default">#teg10</a>
					</dd>
				</dl>
			</blockquote>
		</div>

	</div>

                    <!--Analisar publicaçao-->
                    <div class="row">
                        <div class="col-md-12">
                            <div class="panel panel-default">
                                <div class="panel-heading"><strong>Autorizar publicação</strong></div>
                                <div class="panel-body">
                                    <div class="col-md-12">
                                        
                                        <button type="button" class="btn btn-success btn-block">Aceitar Publicação</button>
                                        <button type="button" class="btn btn-danger btn-block">Regeitar Publicação</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--fim publicacao-->



            </div>
        </div>
    </body>
</html>
