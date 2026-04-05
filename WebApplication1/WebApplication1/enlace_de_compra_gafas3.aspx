<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="enlace_de_compra_gafas3.aspx.cs" Inherits="WebApplication1.enlace_de_compra_gafas3" %>

<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE-edge">
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
                                    <li class="nav-item">
                                        <a class="nav-link" href="index.aspx">Inicio</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="about.aspx">Acerca de Nosotros</a>
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
                                    <li class="nav-item d_none sea_icon">
                                        <a class="nav-link" href="#"><i class="fa fa-shopping-bag"
                                                aria-hidden="true"></i><i class="fa fa-search"
                                                aria-hidden="true"></i></a>
                                    </li>
                                </ul>
                                <div class="carrito-container">
                                    <div>
                                        <img class="carrito" src="images/carrito1.jpg" alt="#"
                                            style="width: 70px; height: 50px;" onclick="abrirModal()">
                                        <div id="numero">0</div>
                                    </div>
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
                <div class="col-md-6">
                    <div class="glasses_box">
                        <a href="enlace_de_compra_gafas3.html">
                            <figure><img src="images/glass3.png" alt="#" /></figure>
                            <h3><span class="blu">$</span>100.000</h3>
                            <p>Gafas de Sol</p>
                            <p class="text-center">Para el amante de lo atemporal, nuestras gafas de sol "Línea Clásica"
                                son la elección perfecta. Con un diseño sencillo pero elegante, estas gafas van más allá
                                de las modas, brindándote un toque de estilo eterno en cada ocasión.

                            </p>
                        </a>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="right-sidebar">
                        <div class="talla_carrito">
                            <h4>Selecciona la talla:</h4>
                            <select>
                                <option value="s">S</option>
                                <option value="m">M</option>
                                <option value="l">L</option>
                            </select>
                            <div>
                                <!-- Agregar el botón y llamar a la función agregarAlCarrito con los valores apropiados -->
                                <button class="boton-agregar"
                                    onclick="agregarAlCarrito(1, 'Gafas de Sol', 100000)">Agregar al carrito</button>
                            </div>
                            <div id="modal-overlay" onclick="cerrarModal()"></div>
                            <div id="modal">
                                <h2>Carrito de compras</h2>
                                <ul id="listaCarrito"></ul>
                                <div class="Total" id="Total"></div>
                                <button onclick="cerrarModal()">Cerrar</button>
                            </div>
                            <div class="envio_info">
                                <h4>Información de envío: <span id="toggleEnvioInfo" style="cursor: pointer;">^</span>
                                </h4>
                                <ul id="envioInfo" style="display: none;">
                                    <li>Envío a tienda GRATIS</li>
                                    <li>2 – 5 días laborables</li>
                                    <li>Envío a domicilio 15.500$</li>
                                    <li>2 – 5 días laborables</li>
                                    <li>Envíos a toda Colombia GRATIS en pedidos superiores a 100.000$</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <footer>
            <div class="footer">
                <div class "container">
                    <div class="row">
                        <div class="col-md-8 offset-md-2">
                            <ul class "location_icon">
                                <li><a href="#"><i class="fa fa-map-marker" aria-hidden="true"></i></a><br> Ubicación
                                </li>
                                <li><a href="#"><i class="fa fa-phone" aria_hidden="true"></i></a><br> +01 1234567890
                                </li>
                                <li><a href="#"><i class="fa fa-envelope" aria-hidden="true"></i></a><br> demo@gmail.com
                                </li>
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

        <script src="js/jquery.min.js"></script>
        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap.bundle.min.js"></script>
        <script src="js/jquery-3.0.0.min.js"></script>
        <script src="js/jquery.mCustomScrollbar.concat.min.js"></script>
        <script src="js/custom.js"></script>
        <script src="js/carrito.js"></script>
        <script>
            var toggleEnvioInfo = document.getElementById('toggleEnvioInfo');
            var envioInfo = document.getElementById('envioInfo');

            toggleEnvioInfo.addEventListener('click', function () {
                if (envioInfo.style.display === 'none' || envioInfo.style.display === '') {
                    envioInfo.style.display = 'block';
                    toggleEnvioInfo.innerText = '˅';
                } else {
                    envioInfo.style.display = 'none';
                    toggleEnvioInfo.innerText = '^';
                }
            });
        </script>
</body>

</html>