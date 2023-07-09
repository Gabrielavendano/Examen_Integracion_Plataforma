<%-- 
    Document   : homeJSP
    Created on : 19-06-2023, 18:08:20
    Author     : USUARIO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
 <h1>Bienvenido a la Página Principal</h1>
    
    <button onclick="irAPagina()">Ir a Otra Página</button>
    
    <script>
        function irAPagina() {
            window.location.href = "Productos.jsp";
        }
    </script>
    </body>
</html>
