<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
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
            	<%@include file="componentes/publicacao.jsp" %>
            	<%@include file="componentes/publicacao.jsp" %>
<%-- 				<c:forEach var="grupo" items="${SPRING_SECURITY_CONTEXT.authentication.principal.usuario.grupos}"> --%>
<%--             		${grupo.nome} --%>
<%--             	</c:forEach> --%>
			${SPRING_SECURITY_CONTEXT.authentication.principal.authorities}
            </div>
        </div>
    </body>
</html>
