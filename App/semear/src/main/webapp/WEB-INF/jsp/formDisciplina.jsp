<%-- 
    Document   : disciplina
    Created on : 18/09/2017, 15:40:39
    Author     : Nat Lucarte
--%>

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

                    <form class="form-horizontal">

                            <!-- Form Name -->
                            <legend>Cadastro de Disciplinas</legend>

                            <!-- Text input-->
                            <div class="form-group">
                                <label class="col-md-1 control-label" for="idNome">Nome</label>  
                                <div class="col-md-11">
                                    <input id="idNome" name="idNome" type="text" placeholder="Nome" class="form-control input-lg" required="">

                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-1 control-label" for="nome">Curso</label>  
                                <div class="col-md-11">
                                    <input id="nome" name="nome" placeholder="Digite o curso" class="form-control input-lg" required="" type="text">
                                    <input type="hidden" name="codigo" id="codigo" />

                                </div>
                            </div>

                            <!-- Text input-->
                            <div class="form-group">
                                <label class="col-md-1 control-label" for="periodo">Período</label>  
                                <div class="col-md-11">
                                    <input id="periodo" name="periodo" placeholder="Digite o período" class="form-control input-lg" type="text">

                                </div>
                            </div>

                            <!-- Text input-->
                            <div class="form-group">
                                <label class="col-md-1 control-label" for="idDisci">Disciplina</label>  
                                <div class="col-md-11">
                                    <input id="idDepto" name="idDisci" type="text" placeholder="Nome da disciplina" class="form-control input-lg" required="">

                                </div>
                            </div>

                            <!-- Text input-->
                            <div class="form-group">
                                <label class="col-md-1 control-label" for="idLogin">Login</label>  
                                <div class="col-md-11">
                                    <input id="idLogin" name="idLogin" type="text" placeholder="Login " class="form-control input-lg" required="">

                                </div>
                            </div>

                            <!-- Password input-->
                            <div class="form-group">
                                <label class="col-md-1 control-label" for="idSenha">Senha</label>
                                <div class="col-md-11">
                                    <input id="idSenha" name="idSenha" type="password" placeholder="Digite a senha" class="form-control input-lg" required="">

                                </div>
                            </div>

                            <!-- Select Basic -->
                            <div class="form-group">
                                <label class="col-md-1 control-label" for="idAdmin">Nível</label>
                                <div class="col-md-11">
                                    <select id="idAdmin" name="idAdmin" class="form-control input-lg">
                                        <option value="1">Administrador</option>
                                        <option value="2">Aluno</option>
                                        <option value="3">Moderador</option>
                                    </select>
                                </div>
                            </div>

                            <!-- Button (Double) -->
                            <div class="form-group">
                                <label class="col-md-1 control-label" for="idConfirmar"></label>
                                <div class="col-md-8">
                                    <button id="idConfirmar" name="idConfirmar" class="btn btn-success btn-lg">Confirmar</button>
                                    <button id="idCancelar" name="idCancelar" class="btn btn-danger btn-lg">Cancelar</button>
                                </div>
                            </div>

                    </form>
                </div>            
            </div>
        </div>
    </div>
    <!---------------------------------------------->
</div>
</div>
</body>
</html>
