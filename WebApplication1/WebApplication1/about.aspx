<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="about.aspx.cs" Inherits="WebApplication1.about" %>

<!DOCTYPE html>
<html lang="es">

<head>
   <!-- básico -->
   <meta charset="utf-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
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
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css"
      media="screen">
   <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
      <![endif]-->
   <style>
      .hidden-content {
         display: none;
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
            <div class row">
               <div class="col-xl-3 col-lg-3 col-md-3 col-sm-3 col logo_section">
                  <div class="full">
                     <div class="center-desk">
                        <div class="logo">
                           <a href="index.html"><img src="images/logo.png" alt="#" /></a>
                        </div>
                     </div>
                  </div>
               </div>
               <div class="col-xl-9 col-lg-9 col-md-9 col-sm-9">
                  <nav class="navigation navbar navbar-expand-md navbar-dark ">
                     <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExample04"
                        aria-controls="navbarsExample04" aria-expanded="false" aria-label="Alternar navegación">
                        <span class="navbar-toggler-icon"></span>
                     </button>
                     <div class="collapse navbar-collapse" id="navbarsExample04">
                        <ul class="navbar-nav mr-auto">
                           <li class="nav-item ">
                              <a class="nav-link" href="index.aspx">Inicio</a>
                           </li>
                           <li class="nav-item active">
                              <a class="nav-link" href="about.aspx">Acerca de Nosotros</a>
                           </li>
                           <li class="nav-item">
                              <a class="nav-link" href="glasses.aspx">Nuestras Gafas</a>
                           </li>
                           <li class "nav-item">
                              <a class="nav-link" href="programas.aspx">programas</a>
                           </li>
                           <li class="nav-item">
                              <a class="nav-link" href="contact.aspx">Contáctanos</a>
                           </li>
                           <li class="nav-item d_none login_btn">
                              <a class="nav-link" href="Login.aspx">Login</a>
                           </li>
                           <li class="nav-item d_none">
                              <a class="nav-link" href="Register.aspx">Register</a>
                           </li>
                           <li class="nav-item d_none sea_icon">
                              <a class="nav-link" href="#"><i class="fa fa-shopping-bag" aria-hidden="true"></i><i
                                    class="fa fa-search" aria-hidden="true"></i></a>
                           </li>
                        </ul>
                     </div>
                  </nav>
               </div>
            </div>
         </div>
      </div>
   </header>
   <!-- fin del encabezado interno -->
   <!-- fin del encabezado -->
   <!-- sección acerca de nosotros -->
   <div class="about">
      <div class="container">
         <div class="row d_flex">
            <div class="col-md-5">
               <div class="about_img">
                  <figure><img src="images/about_img.png" alt="#" /></figure>
               </div>
            </div>
            <div class="col-md-7">
               <div class="titlepage">

                  <h2>Nuestra Historia</h2>
                  <p>Somos una marca apasionada por la moda y la protección visual. nuestra misión es ofrecer gafas de
                     alta calidad que combinen estilo y funcionalidad. Nos esforzamos por brindar a nuestros clientes
                     una amplia gama de opciones de gafas que se adapten a sus necesidades y gustos personales.</p>
               </div>
               <button id="showMoreButton">Leer Más</button>
               <div class="hidden-content">
                  <section>
                     <h2>Nuestra Filosofía</h2>
                     <p>En nuestro enfoque, la moda y la protección visual son inseparables. Creemos que las gafas no
                        solo deben ser una herramienta para mejorar la visión, sino también un accesorio de moda que
                        refleje la personalidad y el estilo de cada individuo. Por lo tanto, nos esforzamos por ofrecer
                        diseños modernos y elegantes que se adapten a diversas ocasiones y estilos de vida.</p>
                  </section>
                  <section>
                     <h2>Nuestro Compromiso</h2>
                     <p>Estamos comprometidos a proporcionar a nuestros clientes una experiencia excepcional. Ofrecemos
                        una amplia variedad de gafas, desde lentes de sol hasta gafas graduadas, para satisfacer las
                        necesidades de todos. Nuestro servicio al cliente es amable y profesional, y estamos aquí para
                        ayudarte a encontrar las gafas perfectas para ti.</p>
                  </section>
               </div>
            </div>
         </div>
      </div>
   </div>
   <!-- fin de la sección acerca de nosotros -->
   <!-- pie de página -->
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
                  <div class="col-md-12">

                  </div>
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
      document.getElementById("showMoreButton").addEventListener("click", function () {
         var hiddenContent = document.querySelector(".hidden-content");
         if (hiddenContent.style.display === "none" || hiddenContent.style.display === "") {
            hiddenContent.style.display = "block";
            document.getElementById("showMoreButton").textContent = "Leer Menos";
         } else {
            hiddenContent.style.display = "none";
            document.getElementById("showMoreButton").textContent = "Leer Más";
         }
      });
   </script>
</body>

</html>