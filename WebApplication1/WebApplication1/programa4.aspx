<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="programa4.aspx.cs" Inherits="WebApplication1.programa4" %>

<!DOCTYPE html>
<html lang="es">
<head>
   <meta charset="utf-8">
   <meta http-equiv="X-UA-Compatible" content="IE-edge">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <meta name="viewport" content="initial-scale=1, maximum-scale=1">
   <title>Gafas de Sol</title>
   <meta name="keywords" content="">
   <meta name="description" content="">
   <meta name="author" content="">
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
   </style>
</head>
<body class="main-layout position_head">
   <div class="loader_bg">
      <div class="loader"><img src="images/loading.gif" alt="#" /></div>
   </div>
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
                           <li class="nav-item">
                              <a class="nav-link" href="programa6.aspx">Programa 6</a>
                           </li>
                           <li class="nav-item">
                              <a class="nav-link" href="programa7.aspx">Programa 7</a>
                           </li>
                           <li class="nav-item">
                              <a class="nav-link" href="programa8.aspx">Programa 8</a>
                           </li>
                           <li class="nav-item">
                              <a class="nav-link" href="programa9.aspx">Programa 9</a>
                           </li>
                           <li class="nav-item">
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

   <div class="container mt-5 calculator-block">
      <h2>Calculadora de Salario Semanal</h2>
      <div class="calculator-form">
         <label for="monday">Lunes:</label>
         <input type="number" id="monday" min="0"><br><br>

         <label for="tuesday">Martes:</label>
         <input type="number" id="tuesday" min="0"><br><br>

         <label for="wednesday">Miércoles:</label>
         <input type="number" id="wednesday" min="0"><br><br>

         <label for="thursday">Jueves:</label>
         <input type="number" id="thursday" min="0"><br><br>

         <label for="friday">Viernes:</label>
         <input type="number" id="friday" min="0"><br><br>

         <label for="saturday">Sábado:</label>
         <input type="number" id="saturday" min="0"><br><br>

         <button onclick="calculateSalary()">Calcular Salario</button>

         <p id="result"></p>
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
   <script src="js/jquery.min.js"></script>
   <script src="js/popper.min.js"></script>
   <script src="js/bootstrap.bundle.min.js"></script>
   <script src="js/jquery-3.0.0.min.js"></script>
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

      document.getElementById("moveLeft").addEventListener("click", function() {
         document.querySelector(".navbar").scrollLeft -= 50;
      });

      document.getElementById("moveRight").addEventListener("click", function() {
         document.querySelector(".navbar").scrollLeft += 50;
      });

      function calculateSalary() {
         var production = [
            parseInt(document.getElementById('monday').value),
            parseInt(document.getElementById('tuesday').value),
            parseInt(document.getElementById('wednesday').value),
            parseInt(document.getElementById('thursday').value),
            parseInt(document.getElementById('friday').value),
            parseInt(document.getElementById('saturday').value)
         ];

         var totalProduction = production.reduce((a, b) => a + b, 0);
         var averageProduction = totalProduction / 6;

         var salaryPerUnit = 2;
         var incentive = 0;

         if (averageProduction < 100) {
            incentive = 0;
         } else if (averageProduction >= 100 && averageProduction < 200) {
            incentive = 0.1;
         } else if (averageProduction >= 200 && averageProduction < 300) {
            incentive = 0.12;
            salaryPerUnit = 2.5;
         } else if (averageProduction >= 300 && averageProduction < 400) {
            incentive = 0.14;
            salaryPerUnit = 3;
         } else if (averageProduction >= 400) {
            incentive = 0.16;
            salaryPerUnit = 3.5;
         }

         var totalSalary = totalProduction * salaryPerUnit * (1 + incentive);

         document.getElementById('result').innerText = 'Incentivo: ' + (incentive * 100) + '% sobre el ingreso total. Salario semanal: $' + totalSalary.toFixed(2);
      }
   </script>
</body>
</html>
