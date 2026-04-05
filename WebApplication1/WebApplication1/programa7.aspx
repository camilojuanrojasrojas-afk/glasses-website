<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="programa7.aspx.cs" Inherits="WebApplication1.programa7" %>

<!DOCTYPE html>
<html lang="es">
<head>
   <meta charset="utf-8">
   <meta http-equiv="X-UA-Compatible" content="IE-edge">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <meta name="viewport" content="initial-scale=1, maximum-scale=1">
   <title>Muestreo de Peso por Categorías de Edad</title>
   <link rel="stylesheet" href="css/bootstrap.min.css">
   <link rel="stylesheet" href="css/style.css">
   <link rel="stylesheet" href="css/responsive.css">
   <link rel="icon" href="images/fevicon.png" type="image/gif" />
   <link rel="stylesheet" href="css/jquery.mCustomScrollbar.min.css">
   <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen">
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
<body class="main-layout position_head">
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
                     <div>
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
                                    <div class="collapse navbar-collapse" id="navbarsExample04">
                                       <ul class="navbar-nav mr-auto">
                                          <li class="nav-item">
                                             <a class="nav-link" href="index.aspx">Inicio</a>
                                          </li>
                                          <li class="nav-item">
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
      <h2>Muestreo de Peso por Categorías de Edad</h2>
      <div class="calculator-form">
        <label for="total-personas">Ingrese el número total de personas:</label>
        <input type="number" id="total-personas">
        <button onclick="obtenerMuestras()">Calcular</button>
      </div>
      <div class="calculator-result">
        <h2>Resultados</h2>
        <p>Niños: <span id="num-ninos">0</span></p>
        <p>Jóvenes: <span id="num-jovenes">0</span></p>
        <p>Adultos: <span id="num-adultos">0</span></p>
        <p>Viejos: <span id="num-viejos">0</span></p>
        <p>Promedio de Peso Niños: <span id="promedio-ninos">0</span></p>
        <p>Promedio de Peso Jóvenes: <span id="promedio-jovenes">0</span></p>
        <p>Promedio de Peso Adultos: <span id="promedio-adultos">0</span></p>
        <p>Promedio de Peso Viejos: <span id="promedio-viejos">0</span></p>
      </div>
   </div>

   <footer>
      <div class="footer">
         <div class="container">
            <div class="row">
               <div class="col-md-8 offset-md-2">
                  <ul class="location_icon">
                     <li><a href="#"><i class="fa fa-map-marker" aria-hidden="true"></i></a><br> Ubicación</li>
                     <li><a href="#"><i class="fa fa-phone" aria-hidden="true"></i></a><br> +123 45 67 89</li>
                     <li><a href="#"><i class="fa fa-envelope" aria-hidden="true"></i></a><br> info@example.com</li>
                  </ul>
               </div>
            </div>
         </div>
      </div>
      <div class="container">
         <div class="row">
           
         </div>
      </div>
   </footer>

   <script>
      let numDias = 0;
      let sumaMaxima = 0;
      let sumaMinima = 0;
      let numErrores = 0;

      function obtenerMuestras() {
        const totalPersonas = parseInt(document.getElementById('total-personas').value);
        const muestras = [];

        for (let i = 0; i < totalPersonas; i++) {
          const edad = parseInt(prompt(`Ingrese la edad de la persona ${i + 1}:`));
          const peso = parseFloat(prompt(`Ingrese el peso de la persona ${i + 1}:`));
          muestras.push({ edad, peso });
        }

        let numNinos = 0;
        let numJovenes = 0;
        let numAdultos = 0;
        let numViejos = 0;
        let sumaNinos = 0;
        let sumaJovenes = 0;
        let sumaAdultos = 0;
        let sumaViejos = 0;

        for (let i = 0; i < muestras.length; i++) {
          const {edad, peso}=muestras[i];

          if (edad >= 0 && edad <= 13) {
            numNinos++;
            sumaNinos += peso;
          } else if (edad >= 14 && edad <= 30) {
            numJovenes++;
            sumaJovenes += peso;
          } else if (edad >= 31 && edad <= 60) {
            numAdultos++;
            sumaAdultos += peso;
          } else {
            numViejos++;
            sumaViejos += peso;
          }
        }

        const promedioNinos = numNinos === 0 ? 0 : (sumaNinos / numNinos).toFixed(2);
        const promedioJovenes = numJovenes === 0 ? 0 : (sumaJovenes / numJovenes).toFixed(2);
        const promedioAdultos = numAdultos === 0 ? 0 : (sumaAdultos / numAdultos).toFixed(2);
        const promedioViejos = numViejos === 0 ? 0 : (sumaViejos / numViejos).toFixed(2);

        document.getElementById('num-ninos').textContent = numNinos;
        document.getElementById('num-jovenes').textContent = numJovenes;
        document.getElementById('num-adultos').textContent = numAdultos;
        document.getElementById('num-viejos').textContent = numViejos;
        document.getElementById('promedio-ninos').textContent = promedioNinos;
        document.getElementById('promedio-jovenes').textContent = promedioJovenes;
        document.getElementById('promedio-adultos').textContent = promedioAdultos;
        document.getElementById('promedio-viejos').textContent = promedioViejos;
      }
   </script>
   <script src="js/jquery-3.3.1.min.js"></script>
   <script src="js/custom.js"></script>
   <script src="js/mCustomScrollbar.concat.min.js"></script>
   <script src="js/swiper.min.js"></script>
   <script src="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.js"></script>
   <script src="js/fancybox.umd.js"></script>
   <script>
      document.getElementById("moveRight").addEventListener("click", () => {
         window.scrollBy({
            top: 0,
            left: 300,
            behavior: 'smooth'
         });
      });

      document.getElementById("moveLeft").addEventListener("click", () => {
         window.scrollBy({
            top: 0,
            left: -300,
            behavior: 'smooth'
         });
      });
   </script>
</body>
</html>

