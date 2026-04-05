<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="programa1.aspx.cs" Inherits="WebApplication1.programa1" %>

<!DOCTYPE html>
<html lang="es">
<head>
   <!-- básico -->
   <meta charset="utf-8">
   <meta http-equiv="X-UA-Compatible" content="IE-edge">
   <!-- metadatos para móviles -->
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <meta name="viewport" content="initial-scale=1, maximum-scale=1">
   <!-- metadatos del sitio -->
   <title>Gafas de Sol</title>
   <meta name="keywords" content="">
   <meta name="description" content="">
   <meta name="author" content="">
   <!-- CSS de Bootstrap -->
   <link rel="stylesheet" href="css/bootstrap.min.css">
   <!-- CSS de estilo -->
   <link rel="stylesheet" href="css/style.css">
   <!-- CSS Responsivo-->
   <link rel="stylesheet" href="css/responsive.css">
   <!-- Favicon -->
   <link rel="icon" href="images/fevicon.png" type="image/gif" />
   <!-- CSS personalizado para la barra de desplazamiento -->
   <link rel="stylesheet" href="css/jquery.mCustomScrollbar.min.css">
   <!-- Ajustes para versiones antiguas de Internet Explorer-->
   <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen">
   
   <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
   <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
   <![endif]>
   <style>
      .hidden-content {
         display: none;
      }

      /* Reduzca la altura de la barra de navegación */
      .navbar {
         height: 40px; /* Puedes ajustar este valor según tus preferencias */
      }

      /* Reduzca el tamaño de la fuente de los enlaces de navegación */
      .nav-link {
         font-size: 14px; /* Puedes ajustar este valor según tus preferencias */
      }

      /* Estilo para el botón de mover a la izquierda y derecha */
      .nav-controls {
         display: flex;
         align-items: center;
      }

      .nav-controls .nav-btn {
         margin: 0 10px;
         cursor: pointer;
      }

      /* Estilo para el bloque de la calculadora */
      .calculator-block {
         text-align: center;
         background-color: #f0f0f0;
         padding: 20px;
         border-radius: 10px;
      }

      .calculator-block h2 {
         font-size: 24px;
         margin-bottom: 20px;
      }

      .calculator-form {
         display: flex;
         flex-direction: column;
         align-items: center;
      }

      .calculator-form label {
         font-size: 16px;
         margin-bottom: 10px;
      }

      .calculator-form input {
         width: 100%;
         padding: 10px;
         margin-bottom: 15px;
         border: 1px solid #ccc;
         border-radius: 5px;
      }

      .calculator-form select {
         width: 100%;
         padding: 10px;
         margin-bottom: 15px;
         border: 1px solid #ccc;
         border-radius: 5px;
      }

      .calculator-form button {
         background-color: #007bff;
         color: #fff;
         padding: 10px 20px;
         border: none;
         border-radius: 5px;
         cursor: pointer;
      }

      .calculator-form button:hover {
         background-color: #0056b3;
      }

      .calculator-result {
         font-size: 18px;
         margin-top: 20px;
      }
   </style>
</head>
<!-- cuerpo -->
<body class="main-layout position_head">
   <!-- cargador -->
   <div class="loader_bg">
      <div class="loader"><img src="images/loading.gif" alt="#" /></div>
   </div>
   <!-- fin del cargador -->
   <!-- encabezado -->
   <header>
      <!-- encabezado interno -->
      <div class="header">
         <div class="container-fluid">
            <div class="row"> <!-- Agregado 'row' para iniciar una nueva fila -->
               <div class="col-12 text-center logo_section"> <!-- Centra el contenido y ocupa todo el ancho -->
                  <div class="logo">
                     <a href="index.html"><img src="images/logo.png" alt="#" /></a>
                  </div>
               </div>
               <div class="col-12 text-center mt-3"> <!-- Centra el contenido y agrega margen superior -->
                  <nav class="navigation navbar navbar-expand-lg navbar-dark"> <!-- Cambiado el atributo 'expand-md' a 'expand-lg' -->
                     <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExample04" aria-controls="navbarsExample04" aria-expanded="false" aria-label="Alternar navegación">
                        <span class="navbar-toggler-icon"></span>
                     </button>
                     <div>

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
                              <a class a="nav-link" href="programa8.aspx">Programa 8</a>
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
    </div>
   </header>

   <div class="container mt-5 calculator-block">
      <h2>Calculadora</h2>
      <div class="calculator-form">
         <label for="num1">Número 1:</label>
         <input type="number" id="num1">
         <label for="num2">Número 2:</label>
         <input type="number" id="num2">
         <label for="operation">Operación:</label>
         <select id="operation">
            <option value="add">Sumar</option>
            <option value="subtract">Restar</option>
            <option value="multiply">Multiplicar</option>
            <option value="divide">Dividir</option>
         </select>
         <button onclick="calculate()">Calcular</button>
         <p class="calculator-result" id="result"></p>
      </div>
   </div>

   <!-- ... Tu contenido principal ... -->

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
   <!-- fin del pie de página -->
   <!-- archivos JavaScript -->
   <script src="js/jquery.min.js"></script>
   <script src="js/popper.min.js"></script>
   <script src="js/bootstrap.bundle.min.js"></script>
   <script src="js/jquery-3.0.0.min.js"></script>
   <!-- barra de desplazamiento personalizada -->
   <script src="js/jquery.mCustomScrollbar.concat.min.js"></script>
   <script src="js/custom.js"></script>
   <script>
      document.getElementById("showMoreButton").addEventListener("click", function() {
         var hiddenContent = document.querySelector(".hidden-content");
         if (hiddenContent.style.display === "none" || hiddenContent.style.display === "") {
            hiddenContent.style.display = "block";
            document.getElementById("showMoreButton").textContent = "Leer Menos";
         } else {
            hiddenContent.style.display = "none";
            document.getElementById("showMoreButton").textContent = "Leer Más";
         }
      });
      // Agrega funcionalidad para mover la barra de navegación
      document.getElementById("moveLeft").addEventListener("click", function() {
         // Mueve la barra de navegación hacia la izquierda
         document.querySelector(".navbar").scrollLeft -= 50;
      });

      document.getElementById("moveRight").addEventListener("click", function() {
         // Mueve la barra de navegación hacia la derecha
         document.querySelector(".navbar").scrollLeft += 50;
      });
      // Función para realizar el cálculo
      function calculate() {
         var num1 = parseFloat(document.getElementById('num1').value);
         var num2 = parseFloat(document.getElementById('num2').value);
         var operation = document.getElementById('operation').value;
         var result;

         switch (operation) {
            case 'add':
               result = (num1 + num2).toFixed(1);
               break;
            case 'subtract':
               result = (num1 - num2).toFixed(1);
               break;
            case 'multiply':
               result = (num1 * num2).toFixed(1);
               break;
            case 'divide':
               if (num2 === 0) {
                  result = 'Error: División por cero no permitida';
               } else {
                  result = (num1 / num2).toFixed(1);
               }
               break;
         }

         document.getElementById('result').innerText = 'Resultado: ' + result;
      }
   </script>
</body>
</html>


