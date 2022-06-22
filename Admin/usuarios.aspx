<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="usuarios.aspx.cs" Inherits="Proyect_2._0._1.Admin.usuarios" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=Edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <meta name="keywords" content=""/>
    <meta name="description" content=""/>
    <meta name="description" content="Pagina Home de Vinateria"/>

    <link rel="icon" type="image/png" href="index/images/logo.ico" />
    <title>Majumi - Usuarios</title>

    <!-- Bootstrap-->
    <link href="principal/css/bootstrap-4.4.1.css" rel="stylesheet" />

    <!-- Style Register-->
    <link href="almacen/css/tabla.css" rel="stylesheet" />
    <link href="principal/css/style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
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



        <!-- User Table
            ================================================== -->
        <div>
            <div class="h2">
                    <h2>Usuarios</h2>
            </div>
            <div>
                <p>
                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal" data-whatever="@mdo">Registrar Usuario</button>
                </p>
            </div>
            <div class="datagrid">
                <table border="1">
                    <thead>
                        <tr>
                            <th>RFC</th>
                            <th>Nombre</th>
                            <th>Apellido Paterno</th>
                            <th>Apellido Materno</th>
                            <th>Tipo de Usuario</th>
                            <th>Usuario</th>
                            <th>Contraseña</th>
                            <th>Acciones</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            while (getFilas().Read())
                            {
                        %>
                        <tr>
                            <td style="text-transform:uppercase"><%=getFilas()[0] %></td>
                            <td style="text-transform:uppercase"><%=getFilas()[1] %></td>
                            <td style="text-transform:uppercase"><%=getFilas()[2] %></td>
                            <td style="text-transform:uppercase"><%=getFilas()[3] %></td>
                            <td><%=getFilas()[4] %></td>
                            <td><%=getFilas()[5] %></td>
                            <td><%=getFilas()[6] %></td>
                            <td>
                                <a href="javascript:void(0);" onclick="eliminaru('Drop/delete.aspx?rfc=<%=getFilas()[5] %>');">
                                    <img src="icons/bin.png" />
                                </a>
                            </td>
                       </tr>
                        <%
                            }
                        %>
                    </tbody>
                </table>
            </div>

        </div>


        <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Registrar Usuario</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div>

                            <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="RFC" runat="server" placeholder="RFC" MaxLength="13" Style="text-transform:uppercase"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="Nombre" runat="server" placeholder="Nombre" MaxLength="40" Style="text-transform:uppercase"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="Paterno" runat="server" placeholder="Apellido Paterno" MaxLength="40" Style="text-transform:uppercase"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="Materno" runat="server" placeholder="Apellido Materno" MaxLength="40" Style="text-transform:uppercase"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:DropDownList CssClass="form-control" ID="Tipo" runat="server">
                                    <asp:ListItem Selected="True" Value="t">Tipo de Usuario</asp:ListItem>
                                    <asp:ListItem Value="admin">Administrador</asp:ListItem>
                                    <asp:ListItem Value="usuario">Usuario</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="Usuario" runat="server" placeholder="Usuario"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="Contrasena" runat="server" placeholder="Contraseña" TextMode="Password"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="CContrasena" runat="server" placeholder="Confirmar Contraseña" TextMode="Password"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                    <asp:Button CssClass="btn btn-primary" ID="btn_reg" runat="server" Text="Registrar" OnClick="Reg"/>
                </div>
                </div>

            </div>
        </div>
    </form>



    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    <script src="principal/js/func.js"></script>
</body>
</html>

