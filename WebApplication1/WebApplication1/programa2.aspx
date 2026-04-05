<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="programa2.aspx.cs" Inherits="WebApplication1.programa2" %>

<!DOCTYPE html>
<html lang="es">
<head>
   <!-- Básico -->
   <meta charset="utf-8">
   <meta http-equiv="X-UA-Compatible" content="IE-edge">
   <!-- Metadatos para móviles -->
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <meta name="viewport" content="initial-scale=1, maximum-scale=1">
   <!-- Metadatos del sitio -->
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

      /* Estilo para funciones matemáticas */
      .math-functions {
         text-align: center;
      }

      .math-functions button {
         display: block;
         margin: 10px auto;
         padding: 10px 20px;
         background: #007bff;
         color: #fff;
         border: none;
         border-radius: 5px;
         cursor: pointer;
      }
   </style>
</head>
<!-- Cuerpo -->
<body class="main-layout position_head">
   <!-- Cargador -->
   <div class="loader_bg">
      <div class="loader"><img src="images/loading.gif" alt="#" /></div>
   </div>
   <!-- Fin del cargador -->
   <!-- Encabezado -->
   <header>
      <!-- Encabezado interno -->
      <div class="header">
         <div class="container-fluid"> <!-- Cambiado 'div class' a 'div class' -->
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
                     <div class="collapse navbar-collapse" id="navbarsExample04"> <!-- Cambiado 'div class' a 'div class' -->
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

   <!-- Funciones Matemáticas -->
   <div class="math-functions">
      <h2>Funciones Matemáticas</h2>
      <button onclick="squareRoot()">Raíz Cuadrada de 25</button>
      <button onclick="power()">5 Elevado a la 3</button>
      <button onclick="calculateSine()">Seno de 90 grados</button>
      <button onclick="calculateCosine()">Coseno de 0 grados</button>
      <button onclick="calculateTangent()">Tangente de 45 grados</button>
      <button onclick="calculateLogarithm()">Logaritmo de 10 en base 10</button>
      <button onclick="calculateExponential()">Exponencial de 2</button>
      <button onclick="calculateCeil()">Redondear hacia arriba 4.6</button>
      <button onclick="calculateFloor()">Redondear hacia abajo 4.6</button>
      <button onclick="getRandom()">Número aleatorio entre 0 y 1</button>
      <p id="result"></p>
   </div>

   <footer>
      <div class="footer">
         <div class="container">
            <div class="row">
               <div class="col-md-8 offset-md-2"> <!-- Cambiado 'div class' a 'div class' -->
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
      </div>
   </footer>
   <!-- Fin del pie de página -->
   <!-- Archivos JavaScript -->
   <script src="js/jquery.min.js"></script>
   <script src="js/popper.min.js"></script>
   <script src="js/bootstrap.bundle.min.js"></script>
   <script src="js/jquery-3.0.0.min.js"></script>
   <!-- Barra de desplazamiento personalizada -->
   <script src="js/jquery.mCustomScrollbar.concat.min.js"></script>
   <script src="js/custom.js"></script>
   <script>
      document.getElementById("showMoreButton").addEventListener("click", function() {
         var hiddenContent = document.querySelector(".hidden-content");
         if (hiddenContent.style.display === "none" || hiddenContent.style.display === "") {
            hiddenContent.style.display = "block";
            document.getElementById("showMoreButton").textContent = "Leer Menos";
         } else {
            hiddenContent.styledisplay = "none";
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

      function squareRoot() {
         var result = Math.sqrt(25);
         document.getElementById("result").innerText = "Raíz Cuadrada de 25: " + result;
      }

      function power() {
         var result = Math.pow(5, 3);
         document.getElementById("result").innerText = "5 Elevado a la 3: " + result;
      }

      function calculateSine() {
         var result = Math.sin((90 * Math.PI) / 180);
         document.getElementById("result").innerText = "Seno de 90 grados: " + result;
      }

      function calculateCosine() {
         var result = Math.cos((0 * Math.PI) / 180);
         document.getElementById("result").innerText = "Coseno de 0 grados: " + result;
      }

      function calculateTangent() {
         var result = Math.tan((45 * Math.PI) / 180);
         document.getElementById("result").innerText = "Tangente de 45 grados: " + result;
      }

      function calculateLogarithm() {
         var result = Math.log10(10);
         document.getElementById("result").innerText = "Logaritmo de 10 en base 10: " + result;
      }

      function calculateExponential() {
         var result = Math.exp(2);
         document.getElementById("result").innerText = "Exponencial de 2: " + result;
      }

      function calculateCeil() {
         var result = Math.ceil(4.6);
         document.getElementById("result").innerText = "Redondear hacia arriba 4.6: " + result;
      }

      function calculateFloor() {
         var result = Math.floor(4.6);
         document.getElementById("result").innerText = "Redondear hacia abajo 4.6: " + result;
      }

      function getRandom() {
         var result = Math.random();
         document.getElementById("result").innerText = "Número aleatorio entre 0 y 1: " + result;
      }
   </script>
</body>
</html>



