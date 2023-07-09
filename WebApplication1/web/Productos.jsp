<%-- 
    Document   : Productos
    Created on : 22-06-2023, 17:44:37
    Author     : USUARIO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Lista de Productos</title>
    <style>
        .carro {
            border: 1px solid black;
            padding: 10px;
            margin-top: 20px;
        }
    </style>
    <script>
        var carro = []; // Arreglo para almacenar los productos agregados al carro
        var total = 0; // Variable para almacenar el total de la compra

        function agregarAlCarro(producto, precio) {
            carro.push(producto); // Agregar el producto al arreglo del carro
            total += precio; // Sumar el precio del producto al total de la compra
            localStorage.setItem('carro', JSON.stringify(carro));
            localStorage.setItem('total', total);
        }
    </script>
</head>
<body>
    <h1>Lista de Productos</h1>

    <h2>Instrumentos de Cuerdas</h2>
    <ul>
        <li>Guitarras Cuerpo Solido - Precio: $500 <button onclick="agregarAlCarro('Guitarras Cuerpo Solido', 500)">Agregar al Carro</button></li>
        <li>Guitarras Acústicas - Precio: $400 <button onclick="agregarAlCarro('Guitarras Acústicas', 400)">Agregar al Carro</button></li>
        <li>Guitarras Eléctricas - Precio: $600 <button onclick="agregarAlCarro('Guitarras Eléctricas', 600)">Agregar al Carro</button></li>
        <li>Bajos Cuatro Cuerdas - Precio: $550 <button onclick="agregarAlCarro('Bajos Cuatro Cuerdas', 550)">Agregar al Carro</button></li>
        <li>Bajos Cinco Cuerdas - Precio: $650 <button onclick="agregarAlCarro('Bajos Cinco Cuerdas', 650)">Agregar al Carro</button></li>
        <li>Bajos Activos - Precio: $700 <button onclick="agregarAlCarro('Bajos Activos', 700)">Agregar al Carro</button></li>
        <li>Bajos Pasivos - Precio: $600 <button onclick="agregarAlCarro('Bajos Pasivos', 600)">Agregar al Carro</button></li>
        <li>Piano de media cola - Precio: $1500 <button onclick="agregarAlCarro('Piano de media cola', 1500)">Agregar al Carro</button></li>
        <li>Piano de cola entera - Precio: $3000 <button onclick="agregarAlCarro('Piano de cola entera', 3000)">Agregar al Carro</button></li>
    </ul>

    <h2>Percusión</h2>
    <ul>
        <li>Baterías Acústicas - Tama - Precio: $1000 <button onclick="agregarAlCarro('Baterías Acústicas', 1000)">Agregar al Carro</button></li>
    </ul>
            <button onclick="mostrarCarro">Mostrar Productos Agregados</button>