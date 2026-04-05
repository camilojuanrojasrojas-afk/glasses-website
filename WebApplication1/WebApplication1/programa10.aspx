<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="programa10.aspx.cs" Inherits="WebApplication1.programa10" %>

<!DOCTYPE html>
<html lang="es">
<head>
   <meta charset="utf-8">
   <meta http-equiv="X-UA-Compatible" content="IE-edge">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <title>Calculadora de Salario</title>
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

      .salario-block {
         text-align: center;
         background-color: #f0f0f0;
         padding: 20px;
         border-radius: 10px;
      }

      .salario-block h2 {
         font-size: 24px;
         margin-bottom: 20px;
      }

      .salario-form {
         display: flex;
         flex-direction: column;
         align-items: center;
      }

      .salario-form label {
         font-size: 16px;
         margin-bottom: 10px;
      }

      .salario-form input {
         width: 100%;
         padding: 10px;
         margin-bottom: 15px;
         border: 1px solid #ccc;
         border-radius: 5px;
      }

      .salario-form button {
         background-color: #007bff;
         color: #fff;
         padding: 10px 20px;
         border: none;
         border-radius: 5px;
         cursor: pointer;
      }

      .salario-form button:hover {
         background-color: #0056b3;
      }

      .salario-result {
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
   </header>

   <!-- Contenido principal - Calculadora de Salario -->
   <div class="container mt-5 salario-block">
    <h2>Calculo de Salario</h2>
    <div class="salario-form">
       <label for="tipo-documento">Tipo de Documento:</label>
       <input type="text" id="tipo-documento" placeholder="Tipo de Documento">
       <label for="numero-documento">Número de Documento:</label>
       <input type="text" id="numero-documento" placeholder="Número de Documento">
       <label for="nombre">Nombre:</label>
       <input type="text" id="nombre" placeholder="Nombre">
       <label for="salario">Salario Base:</label>
       <input type="number" id="salario" min="0" step="0.01" placeholder="Salario Base">
       <label for="auxilio-transporte">Auxilio de Transporte:</label>
       <input type="number" id="auxilio-transporte" min="0" step="0.01" placeholder="Auxilio de Transporte">
       <label for="dias-trabajados">Días Trabajados:</label>
       <input type="number" id="dias-trabajados" min="0" placeholder="Días Trabajados">
       <label for="horas-extras-diurnas">Horas Extras Diurnas:</label>
       <input type="number" id="horas-extras-diurnas" min="0" placeholder="Horas Extras Diurnas">
       <label for="horas-extras-nocturnas">Horas Extras Nocturnas:</label>
       <input type="number" id="horas-extras-nocturnas" min="0" placeholder="Horas Extras Nocturnas">
       <label for="horas-extras-festivas-diurnas">Horas Extras Festivas Diurnas:</label>
       <input type="number" id="horas-extras-festivas-diurnas" min="0" placeholder="Horas Extras Festivas Diurnas">
       <label for="horas-extras-festivas-nocturnas">Horas Extras Festivas Nocturnas:</label>
       <input type="number" id="horas-extras-festivas-nocturnas" min="0" placeholder="Horas Extras Festivas Nocturnas">
       <label for="recargo-nocturno">Recargo Nocturno:</label>
       <input type="number" id="recargo-nocturno" min="0" placeholder="Recargo Nocturno">
       <label for="salud">Salud:</label>
       <input type="number" id="salud" min="0" placeholder="Salud">
       <label for="pension">Pensión:</label>
       <input type="number" id="pension" min="0" placeholder="Pensión">
       <label for="prestamos">Prestamos:</label>
       <input type="number" id="prestamos" min="0" placeholder="Prestamos">
       <label for="fondo-solidaridad">Fondo de Solidaridad:</label>
       <input type="number" id="fondo-solidaridad" min="0" placeholder="Fondo de Solidaridad">
       <button onclick="calcularSalario()">Calcular Salario</button>
    </div>

    <div class="salario-result">
        <h3>Resultados:</h3>
        <p>Total Devengado: <span id="total-devengado">0.00</span></p>
        <p>Sueldo: <span id="sueldo">0.00</span></p>
        <p>Horas Extras Diurnas: <span id="valor-horas-extras-diurnas">0.00</span></p>
        <p>Horas Extras Nocturnas: <span id="valor-horas-extras-nocturnas">0.00</span></p>
        <p>Horas Extras Festivas Diurnas: <span id="valor-horas-extras-festivas-diurnas">0.00</span></p>
        <p>Horas Extras Festivas Nocturnas: <span id="valor-horas-extras-festivas-nocturnas">0.00</span></p>
        <p>Recargo Nocturno: <span id="valor-recargo-nocturno">0.00</span></p>
        <p>Total Deducido: <span id="total-deducido">0.00</span></p>
        <p>Neto Pagado: <span id="neto-pagado">0.00</span></p>
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
      function calcularSalario() {
    // Obtener los valores de los campos del formulario
    var salario = parseFloat(document.getElementById('salario').value);
    var auxilioTransporte = parseFloat(document.getElementById('auxilio-transporte').value);
    var diasTrabajados = parseInt(document.getElementById('dias-trabajados').value);
    var horasExtrasDiurnas = parseInt(document.getElementById('horas-extras-diurnas').value);
    var horasExtrasNocturnas = parseInt(document.getElementById('horas-extras-nocturnas').value);
    var horasExtrasFestivasDiurnas = parseInt(document.getElementById('horas-extras-festivas-diurnas').value);
    var horasExtrasFestivasNocturnas = parseInt(document.getElementById('horas-extras-festivas-nocturnas').value);
    var recargoNocturno = parseFloat(document.getElementById('recargo-nocturno').value);
    var salud = parseFloat(document.getElementById('salud').value);
    var pension = parseFloat(document.getElementById('pension').value);
    var prestamos = parseFloat(document.getElementById('prestamos').value);
    var fondoSolidaridad = parseFloat(document.getElementById('fondo-solidaridad').value);

    // Realizar cálculos
    var totalDevengado = salario + auxilioTransporte;
    var valorHorasExtrasDiurnas = calcularValorHorasExtras(horasExtrasDiurnas, salario);
    var valorHorasExtrasNocturnas = calcularValorHorasExtras(horasExtrasNocturnas, salario) * (1 + recargoNocturno / 100);
    var valorHorasExtrasFestivasDiurnas = calcularValorHorasExtras(horasExtrasFestivasDiurnas, salario) * 1.25;
    var valorHorasExtrasFestivasNocturnas = calcularValorHorasExtras(horasExtrasFestivasNocturnas, salario) * (1 + recargoNocturno / 100) * 1.25;
    var totalDevengadoHorasExtras = valorHorasExtrasDiurnas + valorHorasExtrasNocturnas + valorHorasExtrasFestivasDiurnas + valorHorasExtrasFestivasNocturnas;
    var totalDeducido = salud + pension + prestamos + fondoSolidaridad;
    var netoPagado = totalDevengado + totalDevengadoHorasExtras - totalDeducido;

    // Actualizar los resultados en la página
    document.getElementById('total-devengado').textContent = totalDevengado.toFixed(2);
    document.getElementById('total-deducido').textContent = totalDeducido.toFixed(2);
    document.getElementById('neto-pagado').textContent = netoPagado.toFixed(2);
}

function calcularValorHorasExtras(horas, salario) {
    // En este ejemplo, asumimos un valor fijo por hora extra
    var valorPorHoraExtra = salario / 160; // Se asume un mes de 160 horas
    return horas * valorPorHoraExtra;
}
      
   </script>
</body>
</html>