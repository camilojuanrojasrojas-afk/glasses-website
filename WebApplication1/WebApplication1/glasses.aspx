<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="glasses.aspx.cs" Inherits="WebApplication1.glasses" %>

<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Sunglasses</title>
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
        /* Agrega tu estilo CSS aquí */
        .carrito-container {
            position: relative;
            display: inline-block;
        }

        .carrito {
            width: 70px;
            height: 50px;
            cursor: pointer;
        }

        #numero {
            position: absolute;
            top: 0;
            right: 0;
            background-color: red;
            color: white;
            padding: 6px;
            border-radius: 50%;
            display: none;
            /* inicialmente oculto */
        }

        #modal {
            display: none;
            position: fixed;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            padding: 20px;
            background-color: #fff;
            border: 1px solid #ccc;
            z-index: 1000;
        }

        #modal-overlay {
            display: none;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.5);
            z-index: 999;
        }

        .boton-agregar {
            padding: 10px 20px;
            background-color: aqua;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .boton-agregar:hover {
            background-color: #4CAF50;
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
                            <button class="navbar-toggler" type="button" data-toggle="collapse"
                                data-target="#navbarsExample04" aria-controls="navbarsExample04" aria-expanded="false"
                                aria-label="Alternar navegación">
                                <span class="navbar-toggler-icon"></span>
                            </button>
                            <div class="collapse navbar-collapse" id="navbarsExample04">
                                <ul class="navbar-nav mr-auto">
                                    <li class="nav-item ">
                                        <a class="nav-link" href="index.aspx">Inicio</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class "nav-link" href="about.aspx">Acerca de Nosotros</a>
                                    </li>
                                    <li class="nav-item active">
                                        <a class="nav-link" href="glasses.aspx">Nuestro Catálogo</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="programas.aspx">Programas</a>
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

                                </ul>
                                <div class="carrito-container">
                                    <div>
                                        <img class="carrito" src="images/carrito1.jpg" alt="#"
                                            style="width: 70px; height: 50px;" onclick="abrirModal()">
                                        <div id="numero">0</div>
                                    </div>
                                </div>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </header>

    <div class="glasses">
        <div class="container">
            <div class="row">
                <div class="col-md-10 offset-md-1">
                    <div class="titlepage">
                        <h2>Nuestras Gafas</h2>
                        <p>Descubre el arte de la elegancia bajo el sol. Nuestra colección de gafas de sol redefine el
                            lujo y la sofisticación, garantizando que brilles con cada paso que des</p>
                    </div>
                    <div id="modal-overlay" onclick="cerrarModal()"></div>
                    <div id="modal">
                        <h2>Carrito de compras</h2>
                        <ul id="listaCarrito"></ul>
                        <div class="Total" id="Total"></div>
                        <button onclick="cerrarModal()">Cerrar</button>
                    </div>
                </div>
            </div>
        </div>
        <div class="container-fluid">
            <div class="row">
                <div class="col-xl-3 col-lg-3 col-md-6 col-sm-6">
                    <div class="glasses_box">
                        <a href="enlace_de_compra_gafas1.aspx">
                            <figure><img src="images/glass1.png" alt="#" /></figure>
                            <h3><span class="blu">$</span>150.000</h3>
                            <p>Gafas de Sol</p>
                        </a>
                    </div>
                </div>
                <div class="col-xl-3 col-lg-3 col-md-6 col-sm-6">
                    <div class="glasses_box">
                        <a href="enlace_de_compra_gafas2.aspx">
                            <figure><img src="images/glass2.png" alt="#" /></figure>
                            <h3><span class="blu">$</span>200.000</h3>
                            <p>Gafas de Sol</p>
                        </a>
                    </div>
                </div>
                <div class="col-xl-3 col-lg-3 col-md-6 col-sm-6">
                    <div class="glasses_box">
                        <a href="enlace_de_compra_gafas3.aspx">
                            <figure><img src="images/glass3.png" alt="#" /></figure>
                            <h3><span class="blu">$</span>100.000</h3>
                            <p>Gafas de Sol</p>
                        </a>
                    </div>
                </div>
                <div class="col-xl-3 col-lg-3 col-md-6 col-sm-6">
                    <div class="glasses_box">
                        <a href="enlace_de_compra_gafas4.aspx">
                            <figure><img src="images/glass4.png" alt="#" /></figure>
                            <h3><span class="blu">$</span>120.000</h3>
                            <p>Gafas de Sol</p>
                        </a>
                    </div>
                </div>
                <div class="col-xl-3 col-lg-3 col-md-6 col-sm-6">
                    <div class="glasses_box">
                        <a href="enlace_de_compra_gafas5.aspx">
                            <figure><img src="images/glass5.png" alt="#" /></figure>
                            <h3><span class="blu">$</span>94.000</h3>
                            <p>Gafas de Sol</p>
                        </a>
                    </div>
                </div>
                <div class="col-xl-3 col-lg-3 col-md-6 col-sm-6">
                    <div class="glasses_box">
                        <a href="enlace_de_compra_gafas6.aspx">
                            <figure><img src="images/glass6.png" alt="#" /></figure>
                            <h3><span class="blu">$</span>60.000</h3>
                            <p>Gafas de Sol</p>
                        </a>
                    </div>
                </div>
                <div class="col-xl-3 col-lg-3 col-md-6 col-sm-6">
                    <div class="glasses_box">
                        <a href="enlace_de_compra_gafas7.aspx">
                            <figure><img src="images/glass7.png" alt="#" /></figure>
                            <h3><span class="blu">$</span>80.350</h3>
                            <p>Gafas de Sol</p>
                        </a>
                    </div>
                </div>
                <div class="col-xl-3 col-lg-3 col-md-6 col-sm-6">
                    <div class="glasses_box">
                        <a href="enlace_de_compra_gafas8.aspx">
                            <figure><img src="images/glass8.png" alt="#" /></figure>
                            <h3><span class="blu">$</span>200.000</h3>
                            <p>Gafas de Sol</p>
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">

            </div>
        </div>
    </div>

    <footer>
        <div class="footer">
            <div class="container">
                <div class="row">
                    <div class="col-md-8 offset-md-2">
                        <ul class="location_icon">
                            <li><a href="#"><i class="fa fa-map-marker" aria-hidden="true"></i></a><br> Ubicación</li>
                            <li><a href="#"><i class="fa fa-phone" aria hidden="true"></i></a><br> +01 1234567890</li>
                            <li><a href="#"><i class="fa fa-envelope" aria-hidden="true"></i></a><br> demo@gmail.com
                            </li>
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
    <script src="js/carrito.js"></script>
    <script>
        function toggleGafasAdicionales() {
            const gafasAdicionales = document.getElementById('gafasAdicionales');
            const leerMasBoton = document.getElementById('leerMasBoton');

            if (gafasAdicionales.style.display === 'none') {
                gafasAdicionales.style.display = 'flex'; // Cambiar a 'flex' para disposición horizontal
                leerMasBoton.innerText = 'Leer Menos';
            } else {
                gafasAdicionales.style.display = 'none';
                leerMasBoton.innerText = 'Leer Más';
            }
        }
    </script>
</body>

</html>