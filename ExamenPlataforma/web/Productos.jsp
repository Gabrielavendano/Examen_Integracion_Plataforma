<%-- 
    Document   : Productos
    Created on : 22-06-2023, 17:44:37
    Author     : USUARIO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>Listado de Productos</title>
  <style>
    table {
      border-collapse: collapse;
      width: 100%;
    }
    
    th, td {
      border: 1px solid black;
      padding: 8px;
      text-align: left;
    }
    
    th {
      background-color: #f2f2f2;
    }
    
    .button {
      background-color: #3498db;
      color: #fff;
      border: none;
      padding: 5px 10px;
      text-decoration: none;
      font-size: 14px;
      cursor: pointer;
    }
    
    .carrito {
      margin-top: 20px;
    }
    
    .carrito table {
      margin-bottom: 10px;
    }
    
    .total {
      text-align: right;
      font-weight: bold;
    }
  </style>
</head>
<body>
  <h1>Listado de Productos</h1>
  
  <table>
    <thead>
      <tr>
        <th>Nombre del Producto</th>
        <th>Precio (CLP)</th>
        <th>Acción</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>Guitarras de cuerpo solido</td>
        <td>150000</td>
        <td><button class="button" onclick="agregarAlCarrito('Guitarras de cuerpo solido', 150000)">Agregar al Carrito</button></td>
      </tr>
      <tr>
        <td>Guitarras acústicas</td>
        <td>200000</td>
        <td><button class="button" onclick="agregarAlCarrito('Guitarras acústicas', 200000)">Agregar al Carrito</button></td>
      </tr>
      <tr>
        <td>Guitarras eléctricas</td>
        <td>250000</td>
        <td><button class="button" onclick="agregarAlCarrito('Guitarras eléctricas', 250000)">Agregar al Carrito</button></td>
      </tr>
      <tr>
        <td>Bajos de cuatro cuerdas</td>
        <td>180000</td>
        <td><button class="button" onclick="agregarAlCarrito('Bajos de cuatro cuerdas', 180000)">Agregar al Carrito</button></td>
      </tr>
      <tr>
        <td>Bajos de cinco cuerdas</td>
        <td>220000</td>
        <td><button class="button" onclick="agregarAlCarrito('Bajos de cinco cuerdas', 220000)">Agregar al Carrito</button></td>
      </tr>
      <tr>
        <td>Bajos activos</td>
        <td>190000</td>
        <td><button class="button" onclick="agregarAlCarrito('Bajos activos', 190000)">Agregar al Carrito</button></td>
      </tr>
      <tr>
        <td>Bajos pasivos</td>
        <td>200000</td>
        <td><button class="button" onclick="agregarAlCarrito('Bajos pasivos', 200000)">Agregar al Carrito</button></td>
      </tr>
      <tr>
        <td>Piano de media cola</td>
        <td>500000</td>
        <td><button class="button" onclick="agregarAlCarrito('Piano de media cola', 500000)">Agregar al Carrito</button></td>
      </tr>
      <tr>
        <td>Piano de cola entera</td>
        <td>1000000</td>
        <td><button class="button" onclick="agregarAlCarrito('Piano de cola entera', 1000000)">Agregar al Carrito</button></td>
      </tr>
      <tr>
        <td>Pianolas</td>
        <td>800000</td>
        <td><button class="button" onclick="agregarAlCarrito('Pianolas', 800000)">Agregar al Carrito</button></td>
      </tr>
       <tr>
        <td>Bateria Acustica Tama</td>
        <td>600000</td>
        <td><button class="button" onclick="agregarAlCarrito('Bateria Acustica Tama', 600000)">Agregar al Carrito</button></td>
      </tr>
       <tr>
        <td>Bateria Acustica Pearl</td>
        <td>650000</td>
        <td><button class="button" onclick="agregarAlCarrito('Bateria Acustica Pearl', 650000)">Agregar al Carrito</button></td>
      </tr>
       <tr>
        <td>Bateria Acustica Sonor</td>
        <td>700000</td>
        <td><button class="button" onclick="agregarAlCarrito('Bateria Acustica Sonor', 700000)">Agregar al Carrito</button></td>
      </tr>
       <tr>
        <td>Bateria Acustica Mapex</td>
        <td>750000</td>
        <td><button class="button" onclick="agregarAlCarrito('Bateria Acustica Mapex', 750000)">Agregar al Carrito</button></td>
      </tr>
       <tr>
        <td>Bateria Electronicas Roland</td>
        <td>600000</td>
        <td><button class="button" onclick="agregarAlCarrito('Bateria Electronicas Roland', 600000)">Agregar al Carrito</button></td>
      </tr>
       <tr>
        <td>Bateria Electronicas Alesis</td>
        <td>500000</td>
        <td><button class="button" onclick="agregarAlCarrito('Bateria Electronicas Alesis', 500000)">Agregar al Carrito</button></td>
      </tr>
    </tbody>
  </table>
  
  <div class="carrito">
    <h2>Carrito de Compras</h2>
    <table>
      <thead>
        <tr>
          <th>Producto</th>
          <th>Precio (CLP)</th>
          <th>Acción</th>
        </tr>
      </thead>
      <tbody id="carritoBody"></tbody>
    </table>
    <p class="total" id="total"></p>
    <button class="button" onclick="vaciarCarrito()">Vaciar Carrito</button>
  </div>
   <div class="volver">
    <button class="button" onclick="window.history.back()">Volver</button>
  </div>
  <button onclick="irAPagar()">Ir a Pagar</button>
  
  <script>
    let carrito = [];
    
    function agregarAlCarrito(nombre, precio) {
      carrito.push({ nombre, precio });
      actualizarCarrito();
    }
    
    function vaciarCarrito() {
      carrito = [];
      actualizarCarrito();
    }
    
    function eliminarProducto(index) {
      carrito.splice(index, 1);
      actualizarCarrito();
    }
    
function actualizarCarrito() {
      const carritoBody = document.getElementById('carritoBody');
      const totalElement = document.getElementById('total');
      
      // Reiniciar el contenido del carrito
      carritoBody.innerHTML = '';
      
      // Actualizar los elementos del carrito
      let total = 0;
      carrito.forEach((producto, index) => {
        const row = document.createElement('tr');
        const nombreCell = document.createElement('td');
        nombreCell.textContent = producto.nombre;
        row.appendChild(nombreCell);
        
        const precioCell = document.createElement('td');
        precioCell.textContent = producto.precio;
        row.appendChild(precioCell);
        
        const eliminarCell = document.createElement('td');
        const eliminarButton = document.createElement('button');
        eliminarButton.className = 'eliminar';
        eliminarButton.textContent = 'Eliminar';
        eliminarButton.addEventListener('click', () => eliminarProducto(index));
        eliminarCell.appendChild(eliminarButton);
        row.appendChild(eliminarCell);
        
        carritoBody.appendChild(row);
        
        total += producto.precio;
      });
      
      // Actualizar el total
      totalElement.textContent = 'Total: ' + total + ' CLP';
    }
            function irAPagar() {
            window.location.href = "Pagar.jsp";
        }
  </script>
</body>
</html>
