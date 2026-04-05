<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="WebApplication1.index" %>

<!DOCTYPE html>
<html lang="es">

<head>
   <!-- básico -->
   <meta charset="utf-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <!-- metadatos móviles -->
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <meta name="viewport" content="initial-scale=1, maximum-scale=1">
   <!-- metadatos del sitio -->
   <title>Gafas de sol</title>
   <meta name="keywords" content="">
   <meta name="description" content="">
   <meta name="author" content="">
   <!-- CSS de Bootstrap -->
   <link rel="stylesheet" href="css/bootstrap.min.css">
   <!-- CSS de estilo -->
   <link rel="stylesheet" href="css/style.css">
   <!-- CSS responsivo -->
   <link rel="stylesheet" href="css/responsive.css">
   <!-- Favicon -->
   <link rel="icon" href="images/fevicon.png" type="image/gif" />
   <!-- CSS personalizado para la barra de desplazamiento -->
   <link rel="stylesheet" href="css/jquery.mCustomScrollbar.min.css">
   <!-- Ajustes para navegadores antiguos -->
   <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css"
      media="screen">
   <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
      <![endif]-->
</head>

<body class="main-layout">
   <!-- Cargando... -->
   <div class="loader_bg">
      <div class="loader"><img src="images/loading.gif" alt="#" /></div>
   </div>
   <!-- Encabezado -->
   <header>
      <!-- Sección del encabezado -->
      <div class="header">
         <div class="container-fluid">
            <div class="row">
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
                           <li class="nav-item active">
                              <a class="nav-link" href="index.aspx">Inicio</a>
                           </li>
                           <li class="nav-item">
                              <a class ="nav-link" href="about.aspx">Acerca de nosotros</a>
                           </li>
                           <li class="nav-item">
                              <a class="nav-link" href="glasses.aspx">Nuestro Catalogo</a>
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
                           <li class="nav-item d_none">
                              <a class="nav-link" href="programas.aspx">programas</a>
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
   <!-- Fin de la sección del encabezado -->
   <!-- Banner -->
   <section class="banner_main">
      <div id="banner1" class="carousel slide" data-ride="carousel">
         <ol class="carousel-indicators">
            <li data-target="#banner1" data-slide-to="0" class="active"></li>
            <li data-target="#banner1" data-slide-to="1"></li>
            <li data-target="#banner1" data-slide-to="2"></li>
         </ol>
         <div class="carousel-inner">
            <div class="carousel-item active">
               <div class="container">
                  <div class="carousel-caption">
                     <div class="text-bg">
                        <h1> <span class="blu">Bienvenido <br></span>A Nuestras Gafas de Sol</h1>
                        <figure><img src="images/banner_img.png" alt="#" /></figure>
                        <a class="read_more" href="glasses.aspx">Comprar ahora</a>
                     </div>
                  </div>
               </div>
            </div>
            <div class="carousel-item">
               <div class="container">
                  <div class="carousel-caption">
                     <div class="text-bg">
                        <h1> <span class="blu">Bienvenido <br></span>A Nuestras Gafas de Sol</h1>
                        <figure><img src="images/banner_img.png" alt="#" /></figure>
                        <a class="read_more" href="glasses.aspx">Comprar ahora</a>
                     </div>
                  </div>
               </div>
            </div>
            <div class="carousel-item">
               <div class="container">
                  <div class="carousel-caption">
                     <div class="text-bg">
                        <h1> <span class="blu">Bienvenido <br></span>A Nuestras Gafas de Sol</h1>
                        <figure><img src="images/banner_img.png" alt="#" /></figure>
                        <a class="read_more" href="glasses.aspx">Comprar ahora</a>
                     </div>
                  </div>
               </div>
            </div>
         </div>
         <a class="carousel-control-prev" href="#banner1" role="button" data-slide="prev">
            <i class="fa fa-arrow-left" aria-hidden="true"></i>
         </a>
         <a class="carousel-control-next" href="#banner1" role="button" data-slide="next">
            <i class="fa fa-arrow-right" aria-hidden="true"></i>
         </a>
      </div>
   </section>

   <!-- Fin de la sección Nuestras Gafas -->
   <!-- Sección Nuestra Tienda -->
   <div id="about" class="shop">
      <div class="container-fluid">
         <div class="row">
            <div class="col-md-5">
               <div class ="shop_img">
                  <figure><img src="images/shop_img.png" alt="#" /></figure>
               </div>
            </div>
            <div class="col-md-7 padding_right0">
               <div class="max_width">
                  <div class="titlepage">
                     <h2>Las Mejores Gafas de Sol En Nuestra Tienda</h2>
                     <p>Tu visión es nuestra prioridad. Todas nuestras gafas de sol no solo son un accesorio de moda,
                        sino también un escudo contra los dañinos rayos UV. Descubre la combinación perfecta de estilo y
                        protección.</p>
                     <a class="read_more" href="glasses.aspx">Comprar ahora</a>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
   <div id="contacto" class="contacto">
      <div class="container">
         <div class="row">
            <div class="col-md-6">
               <form id="solicitud" class="main_form">
                  <div class="row">
                     <div class="col-md-12 ">
                        <h3>Contáctenos</h3>
                     </div>
                     <div class="col-md-12 ">
                        <input class="contactus" placeholder="Nombre" type="text" name="Nombre">
                     </div>
                     <div class="col-md-12">
                        <input class="contactus" placeholder="Número de teléfono" type="text" name="Número de teléfono">
                     </div>
                     <div class="col-md-12">
                        <input class="contactus" placeholder="Correo electrónico" type="text" name="Correo electrónico">
                     </div>
                     <div class="col-md-12">
                        <input class="contactusmess" placeholder="Mensaje" type="text" name="Mensaje">
                     </div>
                     <div class="col-md-12">
                        <button class="send_btn">Enviar</button>
                     </div>
                  </div>
               </form>
            </div>
         </div>
      </div>
      <div class="container-fluid">
         <div class="sección del mapa">
            <div id="mapa">
            </div>
         </div>
      </div>
   </div>
   </div>
   <!-- Fin de la sección de contacto -->
   <!-- Pie de página -->
   <footer>
      <div class="footer">
         <div class="container">
            <div class="row">
               <div class="col-md-8 offset-md-2">
                  <ul class="icono de ubicación">
                     <li><a href="#"><i class="fa fa-map-marker" aria-hidden="true"></i></a><br> Ubicación</li>
                     <li><a href="#"><i class="fa fa-phone" aria-hidden="true"></i></a><br> +01 1234567890</li>
                     <li><a href="#"><i class="fa fa-envelope" aria-hidden="true"></i></a><br> demo@gmail.com</li>
                  </ul>
               </div>
            </div>
         </div>
         <div class="derechos de autor">
            <div class="container">
               <div class="row">
                  <div class="col-md-12">

                  </div>
               </div>
            </div>
         </div>
   </footer>
   <!-- Fin del pie de página -->
   <!-- Archivos Javascript -->
   <script src="js/jquery.min.js"></script>
   <script src="js/popper.min.js"></script>
   <script src="js/bootstrap.bundle.min.js"></script>
   <script src="js/jquery-3.0.0.min.js"></script>
   <!-- barra lateral -->
   <script src="js/jquery.mCustomScrollbar.concat.min.js"></script>
   <script src="js/custom.js"></script>
   <script>
      // Este ejemplo agrega un marcador para indicar la posición de Bondi Beach en Sídney,
      // Australia.
      function initMap() {
         var map = new google.maps.Map(document.getElementById('mapa'), {
            zoom: 11,
            center: { lat: 40.645037, lng: -73.880224 },
         });

         var image = 'images/maps-and-flags.png';
         var beachMarker = new google.maps.Marker({
            position: { lat: 40.645037, lng: -73.880224 },
            map: map,
            icon: image
         });
      }
   </script>
   <!-- js de Google Maps -->
   <script src="https://maps.googleapis.com/maps/api/js?key=API_KEY&callback=initMap"></script>
   <!-- Fin de js de Google Maps -->
</body>

</html>
