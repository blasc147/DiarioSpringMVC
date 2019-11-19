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
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    </head>
    <body>
        <div class="container mt-4">
            <div class="card border-info">
                <div class="card-header bg-info text-white">
                    <a href="nuevaNoticia.htm">
                        Agregar una noticia
                    </a>
                </div>
            </div>
            <div class="card-body">
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <td>Titulo</td>
                            <td>Descripcion</td>
                            <td>Acciones</td>
                        </tr>
                    </thead>
                    <tbody>
                        <%-- Los items estan definidos en el controlador--%>
                        <c:forEach var="noticia" items="${noticias}">
                            <tr>
                                <td><c:out value="${noticia.getTitulo()}"></c:out> </td>
                                <td>descripcion</td>
                                <td>
                                    <a class="btn btn-warning">Editar</a>
                                    <a class="btn btn-danger">Delete</a>
                                </td>
                            </tr>

                        </c:forEach>
                    </tbody>
                    
                </table>
                
            </div>
        </div>
        <h1>Lista de noticias</h1>
      
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>
</html>
