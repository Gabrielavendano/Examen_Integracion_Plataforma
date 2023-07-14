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
<style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f2f2f2;
      padding: 40px;
    }

    .container {
      max-width: 600px;
      margin: 0 auto;
      text-align: center;
    }

    h1 {
      font-size: 32px;
      margin-bottom: 20px;
    }

    .button {
      display: inline-block;
      background-color: #3498db;
      color: #fff;
      border: none;
      padding: 10px 20px;
      text-decoration: none;
      font-size: 18px;
      cursor: pointer;
      transition: background-color 0.3s ease;
    }

    .button:hover {
      background-color: #2980b9;
    }
  </style>
    </head>
    <body>
 <h1>Bienvenido a la Página Principal</h1>
    
    <button onclick="irAPagina()">Ir a Comprar Productos</button>
    
    <script>
        function irAPagina() {
            window.location.href = "Productos.jsp";
        }
    </script>
    </body>
</html>
