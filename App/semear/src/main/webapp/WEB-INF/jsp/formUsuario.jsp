<%-- 
    Document   : basetelas
    Created on : 18/09/2017, 00:11:41
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
                
                <!--Essa é a estrutura base das telas tudo que que for montar 
                coloca aqui-->
                <div class="row publication">
                    <!--pronto agora é so brincar aqui  ok e -->
                        <form action="r" method="post" accept-charset="utf-8" class="form" role="form">   
                            <h4>Alterar Usuário.</h4>
                            <div class="row">
                                <div class="col-xs-6 col-md-6">
                                    <input type="text" name="nome" value="" class="form-control input-lg" placeholder="Nome"  />
                                </div>
                                <div class="col-xs-6 col-md-6">
                                    <input type="text" name="usuario" value="" class="form-control input-lg" placeholder="Usuario"  />                        
                                </div>
                            </div>
                            <input type="text" name="email" value="" class="form-control input-lg" placeholder="E-mail"  />
                            <input type="password" name="senha" value="" class="form-control input-lg" placeholder="senha"  />
                            <input type="password" name="senha2" value="" class="form-control input-lg" placeholder="Confirmar senha"  />                    
                            <input type="text" name="data_nascimento" value="" class="form-control input-lg" placeholder="Data de nascimento"  />
                            <div class="row">

                                <div class="col-xs-2 col-md-4">
                                    <select name="month" class = "form-control input-lg">
                                        <option value="">Tipos de Usuário</option>
                                        <option value="DNI">Aluno</option>
                                        <option value="DNF">Aluno Formando</option>
                                        <option value="NIF">Moderador</option>
                                        <option value="NIE">Administrador</option>

                                    </select>
                                </div>
                            </div>
                            <span class="help-block">
                                Ao continuar com o registro aceita os termos e condições sobre nossa política de privacidade
                            </span>
                            <button type="submit" class="btn btn-default btn-lg">Enviar</button>
                        </form>          
                </div>
            </div>
            <!---------------------------------------------->
        </div>
</body>
</html>
