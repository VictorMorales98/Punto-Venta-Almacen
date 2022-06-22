<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="acerca.aspx.cs" Inherits="Proyect_2._0._1.Index.acerca" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="description" content="Pagina Home de Vinateria">

    <link rel="icon" type="image/png" href="index/images/logo.ico" />
    <title>Majumi - Acerca de</title>

    <!-- Bootstrap -->
    <link href="../admin/principal/css/bootstrap-4.4.1.css" rel="stylesheet">

    <!-- Animate CSS
   ================================================== -->
    <link rel="stylesheet" href="css/animate.css">

    <!-- Font Icons CSS
   ================================================== -->
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="index/css/et-line-font.css">

    <!-- Nivo Lightbox CSS
   ================================================== -->
    <link rel="stylesheet" href="css/nivo-lightbox.css">
    <link rel="stylesheet" href="css/nivo_themes/default/default.css">

    <!-- Owl Carousel CSS
   ================================================== -->
    <link rel="stylesheet" href="css/owl.theme.css">
    <link rel="stylesheet" href="css/owl.carousel.css">

    <!-- Main CSS
   ================================================== -->
    <link rel="stylesheet" href="css/style.css">

    <!-- Google web font 
   ================================================== -->
    <link href='https://fonts.googleapis.com/css?family=Oxygen:400,700' rel='stylesheet' type='text/css'>
</head>
<body data-spy="scroll" data-target=".navbar-collapse" data-offset="50">



    <form id="form1" runat="server">
        
        <!-- Navigation section
		================================================== -->
        <div class="navbar navbar-expand-lg navbar-light bg-light">
            <a class="navbar-brand" href="../Admin/principal.aspx">Majumi</a>
            <button class="navbar-toggler" data-toggle="collapse" data-target="#navbarSupportedContent1">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent1">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active"><a class="nav-link" href="../admin/venta.aspx">Ventas <span class="sr-only">(current)</span></a> </li>
                    <li class="nav-item active"><a class="nav-link" href="../admin/clientes.aspx">Clientes <span class="sr-only">(current)</span></a> </li>
                    <li class="nav-item active"><a class="nav-link" href="../admin/usuarios.aspx">Usuarios <span class="sr-only">(current)</span></a> </li>
                    <li class="nav-item active"><a class="nav-link" href="../admin/almacen.aspx">Almacen <span class="sr-only">(current)</span></a> </li>
                    <li class="nav-item active"><a class="nav-link" href="acerca.aspx">Acerca de<span class="sr-only">(current)</span></a> </li>
                </ul>
                <div class="form-inline my-2 my-lg-0" runat="server">
                    <asp:Label ID="Label1" runat="server" CssClass="nav-link"></asp:Label>
                    <asp:Button ID="button_1" runat="server" CssClass="btn btn-outline-success my-2 my-sm-0" Text="Cerrar Sesion" OnClick="logout" />
                </div>
            </div>
        </div>

        <!-- team section
        ================================================== -->
        <section id="team" class="paralla-section">
            <div class="container">
                <div class="row">

                    <!-- Section title
			        ================================================== -->
                    <div class="col-md-offset-2 col-md-8 col-sm-offset-1 col-sm-10 wow bounceIn">
                        <div class="section-title align-content-center">
                            <h1>Equipo de Trabajo</h1>
                            <p>Equipo que desarollo y planteo la solucion para la cadena comercial Majumi.</p>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6 wow fadeInUp" data-wow-delay="0.9s">
                        <div class="team-wrapper">
                            
                        </div>
                        <div class="team-description">
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6 wow fadeInUp" data-wow-delay="0.9s">
                        <div class="team-wrapper">
                            <img src="images/team_1.jpg" class="img-responsive" alt="about"/>
                        </div>
                        <div class="team-description">
                            <h3>Elizabeth Sanchez</h3>
                            <h5>Backend</h5>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6 wow fadeInUp" data-wow-delay="1.3s">
                        <div class="team-wrapper">
                            <img src="images/team_2.jpg" class="img-responsive" alt="about"/>
                        </div>
                        <div class="team-description">
                            <h3>Edwin Bautista</h3>
                            <h5>Backend</h5>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6 wow fadeInUp" data-wow-delay="1.6s">
                        <div class="team-wrapper">
                            <img src="images/team_3.jpg" class="img-responsive" alt="about"/>
                        </div>
                        <div class="team-description">
                            <h3>Victor Morales</h3>
                            <h5>Frontend</h5>
                        </div>
                    </div>

                    <div class="col-md-4 col-sm-6 wow fadeInUp" data-wow-delay="1.6s">
                        <div class="team-wrapper">
                            <img src="images/team_4.jpg" class="img-responsive" alt="about"/>
                        <div class="team-description">
                            <h3>Jorge Bautista</h3>
                            <h5>Backend</h5>
                        </div>
                    </div>

                </div>
            </div>
        </section>
    </form>

    <script src="js/bootstrap.min.js"></script>
    <script src="js/custom.js"></script>
    <script src="js/custom1.js"></script>
    <script src="js/jquery.backstretch.min.js"></script>
    <script src="js/jquery.js"></script>
    <script src="js/jquery.parallax.js"></script>
    <script src="js/jquery.sticky.js"></script>
    <script src="js/nivo-lightbox.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/smoothscroll.js"></script>
    <script src="js/wow.min.js"></script>
</body>
</html>

