<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registros.aspx.cs" Inherits="Proyect_2._0._1.Billing.registros" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="keywords" content="">

    <link rel="icon" type="image/png" href="../index/images/logo.ico" />

    <title>MAJUMI - Ventas</title>

    <link href="../Admin/almacen/css/tabla.css" rel="stylesheet" />
    <!-- Bootstrap -->
    <link href="../Admin/principal/css/bootstrap-4.4.1.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            margin-left: 15px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">

        <!-- Navigation section
		================================================== -->
        <div class="navbar navbar-expand-lg navbar-light bg-light">
            <a class="navbar-brand">Majumi</a>
            <button class="navbar-toggler" data-toggle="collapse" data-target="#navbarSupportedContent1">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent1">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active"><a class="nav-link" href="venta.aspx"><span class="sr-only">(current)</span></a> </li>
                    <li class="nav-item active"><a class="nav-link" href="clientes.aspx"><span class="sr-only">(current)</span></a> </li>
                    <li class="nav-item active"><a class="nav-link" href="usuarios.aspx"><span class="sr-only">(current)</span></a> </li>
                    <li class="nav-item active"><a class="nav-link" href="almacen.aspx"><span class="sr-only">(current)</span></a> </li>
                    <li class="nav-item active"><a class="nav-link" href="../index/acerca.aspx"><span class="sr-only">(current)</span></a> </li>
                </ul>
                <div class="form-inline my-2 my-lg-0" runat="server">
                    <asp:Label ID="Label1" runat="server" CssClass="nav-link"></asp:Label>
                    <asp:Button ID="button_1" runat="server" CssClass="btn btn-outline-success my-2 my-sm-0" Text="Cerrar Sesion" OnClick="logout" />
                </div>
            </div>
        </div>

        <div class="h2">
            <h2>Control de Ventas por Empleado</h2>
        </div>

         <div class="datagrid">
            <table border="0">
                <thead>
                    <tr>
                        <th>Datos</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>
                            <asp:Label runat="server">Clave Ticket</asp:Label>
                            <asp:TextBox runat="server" ID="tick" CssClass="auto-style1" Width="226px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button runat="server" Text="Buscar" OnClick="Search" CssClass="btn btn-primary"/>
                            <asp:Button runat="server" Text="Facturar" OnClick="fac" CssClass="btn btn-primary"/>
                        </td>
                    </tr>
                </tbody>
            </table>
             <div class="datagrid">
            <table border="0">
                <thead>
                    <tr>
                        <th>Clave Articulo</th>
                        <th>Articulo</th>
                        <th>Descripcion</th>
                        <th>Marca</th>
                        <th>Cantidad</th>
                        <th>Precio Unitario</th>
                        <th>Total</th>
                    </tr>
                </thead>
                <tbody>
                    <% 
                        while (getFilas().Read())
                        {
                            String s = getFilas()[1].ToString();
                            String a = getFilas()[2].ToString();
                            String y = s + " " + a;
                    %>
                    <tr>
                        <td><%=getFilas()[7] %></td>
                        <td><%=getFilas()[8] %></td>
                        <td><%=getFilas()[9] %></td>
                        <td><%=getFilas()[13] %></td>
                        <td><%=getFilas()[1] %></td>
                        <td><%=getFilas()[10] %></td>
                        <td><%=getFilas()[11] %></td>
                    </tr>
                    <%
                        }
                    %>
                </tbody>
            </table>
        </div>

        </div>
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    <script src="../Admin/principal/js/func.js"></script>
        
        
    </form>

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="../Admin/principal/js/jquery-3.4.1.min.js"></script>

    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="../Admin/principal/js/popper.min.js"></script>
    <script src="../Admin/principal/js/bootstrap-4.4.1.js"></script>




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

