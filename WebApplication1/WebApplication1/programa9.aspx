<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="programa9.aspx.cs" Inherits="WebApplication1.programa9" %>

<!DOCTYPE html>
<html lang="es">
<head>
   <!-- Metadatos y enlaces a archivos CSS -->
   <meta charset="utf-8">
   <meta http-equiv="X-UA-Compatible" content="IE-edge">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <title>Registro de Materias</title>
   <link rel="stylesheet" href="css/bootstrap.min.css">
   <link rel="stylesheet" href="css/style.css">
   <link rel="stylesheet" href="css/responsive.css">
   <link rel="icon" href="images/fevicon.png" type="image/gif" />
   <link rel="stylesheet" href="css/jquery.mCustomScrollbar.min.css">
   <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css">
   <style>
      .hidden-content {
         display: none;
      }

      .navbar {
         height: 40px;
      }

      .nav-link {
         font-size: 14px;
      }

      .nav-controls {
         display: flex;
         align-items: center;
      }

      .nav-controls .nav-btn {
         margin: 0 10px;
         cursor: pointer;
      }

      .materias-block {
         text-align: center;
         background-color: #f0f0f0;
         padding: 20px;
         border-radius: 10px;
      }

      .materias-block h2 {
         font-size: 24px;
         margin-bottom: 20px;
      }

      .materias-form {
         display: flex;
         flex-direction: column;
         align-items: center;
      }

      .materias-form label {
         font-size: 16px;
         margin-bottom: 10px;
      }

      .materias-form input {
         width: 100%;
         padding: 10px;
         margin-bottom: 15px;
         border: 1px solid #ccc;
         border-radius: 5px;
      }

      .materias-form button {
         background-color: #007bff;
         color: #fff;
         padding: 10px 20px;
         border: none;
         border-radius: 5px;
         cursor: pointer;
      }

      .materias-form button:hover {
         background-color: #0056b3;
      }

      .materias-result {
         font-size: 18px;
         margin-top: 20px;
      }
   </style>
</head>
<body class="main-layout position_head">
   <!-- Barra de navegación -->
   <header>
      <div class="header">
         <div class="container-fluid">
            <div class="row">
               <div class="col-12 text-center logo_section">
                  <div class="logo">
                     <a href="index.html"><img src="images/logo.png" alt="#" /></a>
                  </div>
               </div>
               <div class="col-12 text-center mt-3">
                  <nav class="navigation navbar navbar-expand-lg navbar-dark">
                     <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExample04" aria-controls="navbarsExample04" aria-expanded="false" aria-label="Alternar navegación">
                        <span class="navbar-toggler-icon"></span>
                     </button>
                     <div class="collapse navbar-collapse" id="navbarsExample04">
                        <ul class="navbar-nav mr-auto">
                           <li class="nav-item">
                              <a class="nav-link" href="index.aspx">Inicio</a>
                           </li>
                           <li class="nav-item active">
                              <a class="nav-link" href="programa1.aspx">Programa 1</a>
                           </li>
                           <li class="nav-item">
                              <a class="nav-link" href="programa2.aspx">Programa 2</a>
                           </li>
                           <li class="nav-item">
                              <a class="nav-link" href="programa3.aspx">Programa 3</a>
                           </li>
                           <li class="nav-item">
                              <a class="nav-link" href="programa4.aspx">Programa 4</a>
                           </li>
                           <li class="nav-item">
                              <a class="nav-link" href="programa5.aspx">Programa 5</a>
                           </li>
                           <li class="nav-item d_none">
                              <a class="nav-link" href="programa6.aspx">Programa 6</a>
                           </li>
                           <li class="nav-item d_none">
                              <a class="nav-link" href="programa7.aspx">Programa 7</a>
                           </li>
                           <li class="nav-item d_none">
                              <a class="nav-link" href="programa8.aspx">Programa 8</a>
                           </li>
                           <li class="nav-item d_none">
                              <a class="nav-link" href="programa9.aspx">Programa 9</a>
                           </li>
                           <li class="nav-item d_none">
                              <a class="nav-link" href="programa10.aspx">Programa 10</a>
                           </li>
                        </ul>
                     </div>
                  </nav>
                  <div class="nav-controls mt-3">
                     <div class="nav-btn" id="moveLeft">←</div>
                     <div class="nav-btn" id="moveRight">→</div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </header>

   <!-- Contenido principal - Información de Materias -->
   <div class="container mt-5 materias-block">
      <h2>Información de Materias</h2>
      <div class="materias-form">
         <label for="codigo-estudiante">Código del Estudiante:</label>
         <input type="text" id="codigo-estudiante" placeholder="Código del Estudiante">
         <label for="nombre-estudiante">Nombre del Estudiante:</label>
         <input type="text" id="nombre-estudiante" placeholder="Nombre del Estudiante">
         <label for="codigo-materia">Código de la Materia:</label>
         <input type="text" id="codigo-materia" placeholder="Código de la Materia">
         <label for="materia">Nombre de la Materia:</label>
         <input type="text" id="materia" placeholder="Nombre de la Materia">
         <label for="nota">Nota:</label>
         <input type="number" id="nota" min="0" max="20" step="0.01" placeholder="Nota">
         <button onclick="agregarMateria()">Agregar Materia</button>
      </div>

      <div class="materias-list">
         <h3>Lista de Materias</h3>
         <table>
            <thead>
               <tr>
                  <th>Código del Estudiante</th>
                  <th>Nombre del Estudiante</th>
                  <th>Código de la Materia</th>
                  <th>Nombre de la Materia</th>
                  <th>Nota</th>
               </tr>
            </thead>
            <tbody id="materias-table-body">
            </tbody>
         </table>
      </div>
   </div>

   <!-- Pie de página -->
   <footer>
      <div class="footer">
         <div class="container">
            <div class="row">
               <div class="col-md-8 offset-md-2">
                  <ul class="location_icon">
                     <li><a href="#"><i class="fa fa-map-marker" aria-hidden="true"></i></a><br> Ubicación</li>
                     <li><a href="#"><i class="fa fa-phone" aria-hidden="true"></i></a><br> +01 1234567890</li>
                     <li><a href="#"><i class="fa fa-envelope" aria-hidden="true"></i></a><br> demo@gmail.com</li>
                  </ul>
               </div>
            </div>
         </div>
         <div class="copyright">
            <div class="container">
               <div class="row">
                 
               </div>
            </div>
         </div>
      </div>
   </footer>

   <!-- Archivos JavaScript -->
   <script src="js/jquery.min.js"></script>
   <script src="js/popper.min.js"></script>
   <script src="js/bootstrap.bundle.min.js"></script>
   <script src="js/jquery-3.0.0.min.js"></script>
   <script src="js/jquery.mCustomScrollbar.concat.min.js"></script>
   <script src="js/custom.js"></script>
   <script>
      function agregarMateria() {
         var codigoEstudiante = document.getElementById('codigo-estudiante').value;
         var nombreEstudiante = document.getElementById('nombre-estudiante').value;
         var codigoMateria = document.getElementById('codigo-materia').value;
         var nombreMateria = document.getElementById('materia').value;
         var notaMateria = parseFloat(document.getElementById('nota').value);

         var tableBody = document.getElementById('materias-table-body');
         var newRow = tableBody.insertRow(tableBody.rows.length);
         var cell1 = newRow.insertCell(0);
         var cell2 = newRow.insertCell(1);
         var cell3 = newRow.insertCell(2);
         var cell4 = newRow.insertCell(3);
         var cell5 = newRow.insertCell(4);

         cell1.innerHTML = codigoEstudiante;
         cell2.innerHTML = nombreEstudiante;
         cell3.innerHTML = codigoMateria;
         cell4.innerHTML = nombreMateria;
         cell5.innerHTML = notaMateria;

         // Limpia los campos del formulario después de agregar la materia
         document.getElementById('codigo-materia').value = '';
         document.getElementById('materia').value = '';
         document.getElementById('nota').value = '';
      }
   </script>
</body>
</html>
