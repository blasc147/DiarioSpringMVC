<%-- 
    Document   : nuevaNoticia
    Created on : 19/11/2019, 00:31:31
    Author     : blasc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

        <title>Create</title>
    </head>
    <body>
        <div class="container mt-4 col-lg-4">
            <div class="card border-info">
                <div class="card-header bg-info text-white">
                    Nueva Noticia
                </div>
                <div class="card-body">
                    <form method="POST">
                        <label>Titulo</label>
                        <input type="text" name="titulo" class="form-control">
                        
                        <label>Descripcion</label>
                        <input type="text" name="descripcion" class="form-control">
                        
                        <input type="submit" value="Agregar" class="btn btn-success">
                        
                    </form>
                    
                </div>
            </div>
            
        </div>
    </body>
</html>
