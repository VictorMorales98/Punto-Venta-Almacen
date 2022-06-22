<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="principal.aspx.cs" Inherits="Proyect_2._0._1.Admin.principal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="description" content="Pagina Home de Vinateria">

    <link rel="icon" type="image/png" href="../index/images/logo.ico" />
    <title>Majumi - Principal</title>

    <!-- Bootstrap -->
    <link href="principal/css/bootstrap-4.4.1.css" rel="stylesheet">

    <!-- Animate CSS
   ================================================== -->
	<link rel="stylesheet" href="../index/css/animate.css">

	<!-- Font Icons CSS
   ================================================== -->
	<link rel="stylesheet" href="../index/css/font-awesome.min.css">
	<link rel="stylesheet" href="../index/css/et-line-font.css">

	<!-- Nivo Lightbox CSS
   ================================================== -->
	<link rel="stylesheet" href="../index/css/nivo-lightbox.css">
	<link rel="stylesheet" href="../index/css/nivo_themes/default/default.css">

	<!-- Owl Carousel CSS
   ================================================== -->
   	<link rel="stylesheet" href="../index/css/owl.theme.css">
	<link rel="stylesheet" href="../index/css/owl.carousel.css">

	<!-- Main CSS
   ================================================== -->
	<link rel="stylesheet" href="../index/css/style.css">

	<!-- Google web font 
   ================================================== -->	
   <link href='https://fonts.googleapis.com/css?family=Oxygen:400,700' rel='stylesheet' type='text/css'>

</head>
<body>
    <form class="form1" runat="server">

       <!-- Navigation section
		================================================== -->
        <div class="navbar navbar-expand-lg navbar-light bg-light">
            <a class="navbar-brand" href="principal.aspx">Majumi</a>
            <button class="navbar-toggler" data-toggle="collapse" data-target="#navbarSupportedContent1">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent1">
                 <ul class="navbar-nav mr-auto">
                    <li class="nav-item active"><a class="nav-link" href="venta.aspx">Ventas <span class="sr-only">(current)</span></a> </li>
                    <li class="nav-item active"><a class="nav-link" href="clientes.aspx">Clientes <span class="sr-only">(current)</span></a> </li>
                    <li class="nav-item active"><a class="nav-link" href="usuarios.aspx">Usuarios <span class="sr-only">(current)</span></a> </li>
                    <li class="nav-item active"><a class="nav-link" href="almacen.aspx">Almacen <span class="sr-only">(current)</span></a> </li>
                    <li class="nav-item active"><a class="nav-link" href="../index/acerca.aspx">Acerca de<span class="sr-only">(current)</span></a> </li>
                </ul>
                <div class="form-inline my-2 my-lg-0" runat="server">
                    <asp:Label ID="Label1" runat="server" CssClass="nav-link"></asp:Label>
                    <asp:Button ID="button_1" runat="server" CssClass="btn btn-outline-success my-2 my-sm-0" Text="Cerrar Sesion" OnClick="logout" />
                </div>
            </div>
        </div>

        <!-- portfolio section
		================================================== -->
        <section id="portfolio" class="parallax-section">
            <div class="container">
                <div class="row">

                    <div class="col-md-4 col-sm-6 wow fadeInUp" data-wow-delay="0.9s">
                        <div class="portfolio-thumb">
                            <a href="../index/images/portfolio-img1.jpg" data-lightbox-gallery="portfolio-gallery">
                                <img src="../index/images/portfolio-img1.jpg" class="fluid-img" alt="portfolio img">
                                <div class="portfolio-overlay">
                                    <div class="portfolio-overlay-des">
                                        <i class="fa fa-link"></i>
                                        <h3>L. A. CETTO</h3>
                                        <h5>Nebbiolo / Vino Tinto / 2013</h5>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6 wow fadeInUp" data-wow-delay="0.9s">
                        <div class="portfolio-thumb">
                            <a href="../index/images/portfolio-img2.jpg" data-lightbox-gallery="portfolio-gallery">
                                <img src="../index/images/portfolio-img2.jpg" class="fluid-img" alt="portfolio img">
                                <div class="portfolio-overlay">
                                    <div class="portfolio-overlay-des">
                                        <i class="fa fa-link"></i>
                                        <h3>Illustration</h3>
                                        <h5>Graphic / Illustration / Poster</h5>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6 wow fadeInUp" data-wow-delay="0.9s">
                        <div class="portfolio-thumb">
                            <a href="../index/images/portfolio-img3.jpg" data-lightbox-gallery="portfolio-gallery">
                                <img src="../index/images/portfolio-img3.jpg" class="fluid-img" alt="portfolio img">
                                <div class="portfolio-overlay">
                                    <div class="portfolio-overlay-des">
                                        <i class="fa fa-link"></i>
                                        <h3>Poster Design</h3>
                                        <h5>Graphic / Illustration / Poster</h5>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6 wow fadeInUp" data-wow-delay="0.9s">
                        <div class="portfolio-thumb">
                            <a href="../index/images/portfolio-img4.jpg" data-lightbox-gallery="portfolio-gallery">
                                <img src="../index/images/portfolio-img4.jpg" class="fluid-img" alt="portfolio img">
                                <div class="portfolio-overlay">
                                    <div class="portfolio-overlay-des">
                                        <i class="fa fa-link"></i>
                                        <h3>Web Design</h3>
                                        <h5>Graphic / Illustration / Poster</h5>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6 wow fadeInUp" data-wow-delay="0.9s">
                        <div class="portfolio-thumb">
                            <a href="../index/images/portfolio-img5.jpg" data-lightbox-gallery="portfolio-gallery">
                                <img src="../index/images/portfolio-img5.jpg" class="fluid-img" alt="portfolio img">
                                <div class="portfolio-overlay">
                                    <div class="portfolio-overlay-des">
                                        <i class="fa fa-link"></i>
                                        <h3>Cover Design</h3>
                                        <h5>Graphic / Illustration / Poster</h5>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6 wow fadeInUp" data-wow-delay="0.9s">
                        <div class="portfolio-thumb">
                            <a href="../index/images/portfolio-img6.jpg" data-lightbox-gallery="portfolio-gallery">
                                <img src="../index/images/portfolio-img6.jpg" class="fluid-img" alt="portfolio img">
                                <div class="portfolio-overlay">
                                    <div class="portfolio-overlay-des">
                                        <i class="fa fa-link"></i>
                                        <h3>Web Design</h3>
                                        <h5>Graphic / Illustration / Poster</h5>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>

                </div>
            </div>
        </section>

    </form>

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="principal/js/jquery-3.4.1.min.js"></script>

    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="principal/js/popper.min.js"></script>
    <script src="principal/js/bootstrap-4.4.1.js"></script>




    <script src="../index/js/jquery.js"></script>
    <script src="../index/js/bootstrap.min.js"></script>
    <script src="../index/js/jquery.sticky.js"></script>
    <script src="../index/js/jquery.backstretch.min.js"></script>
    <script src="../index/js/jquery.parallax.js"></script>
    <script src="../index/js/nivo-lightbox.min.js"></script>
    <script src="../index/js/owl.carousel.min.js"></script>
    <script src="../index/js/smoothscroll.js"></script>
    <script src="../index/js/wow.min.js"></script>
    <script src="../index/js/custom.js"></script>
</body>
</html>
