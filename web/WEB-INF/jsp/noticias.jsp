<%-- 
    Document   : noticias
    Created on : 31/10/2019, 17:23:12
    Author     : blasc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Noticias</title>
    </head>
    <body>
        <h1>Lista de noticias</h1>
        <table>
        <tr>
            <td>titulo</td>
            <td>descripcion</td>
        </tr>
    <%-- Los items estan definidos en el controlador--%>
    <c:forEach var="noticia" items="${noticias}">
        <tr>
            <td><c:out value="${noticia.getTitulo()}"></c:out> </td>
            <td>descripcion</td>
        </tr>
        
    </c:forEach>
        </table>
    </body>
</html>
