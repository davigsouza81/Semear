<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="componentes/head.jsp" %>
    </head>
    <body>
        <%@include file="componentes/menuTop.jsp" %>
        <div class="container">
            <%@include file="componentes/menuSidebar.jsp" %>

            <div class="col-md-10">
                <div class="row publication">
                    <h2>Publicar Arquivo</h2>
                    <form>
                        <div class="form-group">
                            <label for="nome">Título do Trabalho</label>
                            <input type="text" class="form-control" id="nome" placeholder="Titulo do trabalhos">
                        </div>
                        <div class="form-group">
                            <label for="tags">Tags</label>
                            <input type="text" class="form-control" id="tags" placeholder="Escrevas tags ex.: tag1; tag2; tag3">
                        </div>
                        <div class="form-group">
                            <label for="descricao">Descrição</label>
                            <textarea type="" class="form-control" id="descricao" placeholder="Desscreva o conteúdo do arquivo"></textarea>
                        </div>
                        <div class="form-group">
                            <label for="arquivo">Entrada de arquivo</label>
                            <input type="file" class="btn btn-default" id="arquivo"/>
                            <p class="help-block">Exemplo documento do Word.</p>
                        </div>
                        <button type="submit" class="btn btn-default btn-lg">Enviar</button>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
