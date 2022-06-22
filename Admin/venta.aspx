<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="venta.aspx.cs" Inherits="Proyect_2._0._1.Admin.venta" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=Edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <meta name="keywords" content=""/>

    <link rel="icon" type="image/png" href="../index/images/logo.ico" />

    <title>MAJUMI - Ventas</title>

    <link href="almacen/css/tabla.css" rel="stylesheet" />
    <!-- Bootstrap -->
    <link href="principal/css/bootstrap-4.4.1.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 18px;
            height: 17px;
        }
        .auto-style2 {
            margin-right: 7px;
            margin-top: 2px;
            margin-left: 1132px;
        }
    </style>
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

        <div class="h2">
            <h2>Ventas</h2>
        </div>
        <div>
            <asp:Button ID="nueva" runat="server" CssClass="btn btn-primary" Text="Nueva Venta" OnClick="codRand" />
        </div>
        <!-- Data Sale-->
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
                            <asp:Label runat="server">No. de Compra:   </asp:Label>
                            <asp:Label ID="tick" runat="server" Enabled="False"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="cl" runat="server" CssClass="alin">Cliente: </asp:Label>
                            &nbsp;<asp:DropDownList ID="cli" runat="server" CssClass="alin" DataSourceID="SqlDataSource3" DataTextField="nombre" DataValueField="CLI_RFC_CLIENTES" Height="18px" Width="293px">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:VINATERIAConnectionString %>" SelectCommand="SELECT [CLI_RFC_CLIENTES],concat( [CLI_NOMBRE], ' ',[CLI_PATERNO]) as nombre FROM [CLIENTES]"></asp:SqlDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label runat="server" CssClass="alin">Vendedor: </asp:Label>
                            <asp:TextBox ID="usu" runat="server" Width="278px" CssClass="alin" Enabled="False"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <img src="icons/plus.png" data-toggle="modal" data-target="#act" data-whatever="@mdo" class="auto-style1" />
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>

        <!-- Data Products-->
        <div class="datagrid">
            <table border="0">
                <thead>
                    <tr>
                        <th>Codigo</th>
                        <th>Nombre</th>
                        <th>Descirpcion</th>
                        <th>Cantidad</th>
                        <th>Precio Unitario</th>
                        <th>Total</th>
                    </tr>
                </thead>
                <tbody>
                    <% 
                        while (getVen().Read())
                        {
                            f = f + Double.Parse(getVen()[6].ToString());
                            iva = f * i;
                            to = f + iva;
                    %>
                    <tr>
                        <td><%=getVen()[1] %></td>
                        <td><%=getVen()[2] %></td>
                        <td><%=getVen()[3] %></td>
                        <td><%=getVen()[4] %></td>
                        <td><%=getVen()[5] %></td>
                        <td><%=getVen()[6] %></td>
                    </tr>
                    <%
                        }
                    %>
                </tbody>
            </table>
            <p class="auto-style2">
                <asp:Label runat="server">Sub Total:</asp:Label>
                <asp:Label runat="server" ID="subs">$<%=f %></asp:Label>
            </p>
            <p class="auto-style2">
                <asp:Label runat="server">IVA 16%:</asp:Label>
                <asp:Label runat="server" ID="Label2">$<%=iva %></asp:Label>
            </p>
            <p class="auto-style2">
                <asp:Label runat="server">Total:</asp:Label>
                <asp:Label runat="server" ID="Label3">$<%=to %></asp:Label>
            </p>
        </div>

        <div>
            <asp:Button runat="server" Text="Terminar" CssClass="btn btn-primary" ID="ter" OnClick="terminar"/>
            <asp:Button runat="server" Text="Reiniciar" CssClass="btn btn-primary" ID="rei" OnClick="reiniciar"/>
        </div>


        <!-- Select Product -->
        <div class="modal fade" id="act" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="act1">Agregar Producto</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div>
                            <div class="form-group">
                                <asp:DropDownList CssClass="form-control" ID="pro" runat="server" DataSourceID="SqlDataSource2" DataTextField="ART_NOMBRE" DataValueField="ART_CVE_ARTICULOS">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:VINATERIAConnectionString %>" SelectCommand="SELECT [ART_CVE_ARTICULOS], [ART_NOMBRE], [ART_EXISTENCIA] FROM [ARTICULOS] WHERE ([ART_EXISTENCIA] &gt; @ART_EXISTENCIA)">
                                <SelectParameters>
                                    <asp:FormParameter DefaultValue="0" FormField="0" Name="ART_EXISTENCIA" Type="Int32" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                            </div>
                            <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Cantidad" TextMode="Number"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                        <asp:Button CssClass="btn btn-primary" ID="Button1" runat="server" Text="Agregar" OnClick="RegVen" />
                    </div>
                </div>
                
            </div>
        </div>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:VINATERIAConnectionString %>" SelectCommand="SELECT [ART_CVE_ARTICULOS], [ART_NOMBRE], [ART_EXISTENCIA] FROM [ARTICULOS] WHERE ([ART_EXISTENCIA] &gt; @ART_EXISTENCIA)">
            <SelectParameters>
                <asp:FormParameter DefaultValue="0" FormField="0" Name="ART_EXISTENCIA" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    <script src="principal/js/func.js"></script>
</body>
</html>
