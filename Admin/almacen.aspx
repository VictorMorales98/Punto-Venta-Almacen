<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="almacen.aspx.cs" Inherits="Proyect_2._0._1.Admin.almacen" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="keywords" content="">

    <link rel="icon" type="image/png" href="../index/images/logo.ico" />

    <title>MAJUMI - Productos</title>
    <link href="almacen/css/tabla.css" rel="stylesheet" />
    <!-- Bootstrap -->
    <link href="principal/css/bootstrap-4.4.1.css" rel="stylesheet" />
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

        <div>
            <div class="h2">
                    <h2>Almacen</h2>
            </div>
            <div>
                <p>
                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal" data-whatever="@mdo" style="width: 193px">Registrar Producto</button>
                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#act" data-whatever="@mdo" style="width: 193px">Actualizar Producto</button>
                </p>
            </div>
            <div class="datagrid">
                <table border="1">
                    <thead>
                        <tr>
                            <th>Codigo</th>
                            <th>Nombre</th>
                            <th>Descripcion</th>
                            <th>Tipo</th>
                            <th>Marca</th>
                            <th>Existencia</th>
                            <th>Precio Compra</th>
                            <th>Precio venta</th>
                            <th>Acciones</th>
                        </tr>                        
                    </thead>
                    <tbody>
                        <%
                            while (getFilas().Read())
                               
                            {
                                if (int.Parse(getFilas()[5].ToString()) > 0)
                                {
                                    %>
                                <tr>
                                    <td><%=getFilas()[0] %></td>
                                    <td><%=getFilas()[1] %></td>
                                    <td><%=getFilas()[2] %></td>
                                    <td><%=getFilas()[3] %></td>
                                    <td><%=getFilas()[4] %></td>
                                    <td><%=getFilas()[5] %></td>
                                    <td>$<%=getFilas()[6]%></td>
                                    <td>$<%=getFilas()[7]%></td>
                                    <td>
                                        <a href="javascript:void(0);" onclick="eliminarp('Drop/deletep.aspx?cod=<%=getFilas()[0] %>');">
                                            <img src="icons/bin.png" />
                                        </a>
                                    </td>
                                </tr>
                        <%
                                }
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
                        <h5 class="modal-title" id="exampleModalLabel">Registrar Producto</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div>

                            <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="cod" runat="server" placeholder="Codigo de Barras" MaxLength="13" TextMode="Phone"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="Nombre" runat="server" placeholder="Nombre" MaxLength="40"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="Desc" runat="server" placeholder="Descripcion" MaxLength="40" ></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:DropDownList CssClass="form-control" ID="DropDownList3" runat="server" DataSourceID="SqlDataSource1" DataTextField="PROV_NOMBRE" DataValueField="PROV_RFC_PROVEDORES">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:VINATERIAConnectionString %>" SelectCommand="SELECT [PROV_RFC_PROVEDORES], [PROV_NOMBRE] FROM [PROVEDORES]"></asp:SqlDataSource>
                            </div>
                            <div class="form-group">
                                 <asp:DropDownList CssClass="form-control" ID="DropDownList4" runat="server" DataSourceID="SqlDataSource2" DataTextField="TIP_DESCRIPCION" DataValueField="TIP_CVE_TIPO">
                                 </asp:DropDownList>
                                 <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:VINATERIAConnectionString %>" SelectCommand="SELECT [TIP_CVE_TIPO], [TIP_DESCRIPCION] FROM [TIPO_ART]"></asp:SqlDataSource>
        
                            </div>
                            <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="Exis" runat="server" placeholder="Existencias" TextMode="Number"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="com" runat="server" placeholder="Precio Compra" ></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="ven" runat="server" placeholder="Precio Venta"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                    <asp:Button CssClass="btn btn-primary" ID="btn_reg" runat="server" Text="Registrar" OnClick="RegPro"/>
                </div>
                </div>
                
            </div>
        </div>
        
                
        <div class="modal fade" id="act" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="act1">Actualizar Producto</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div>
                            <div class="form-group">
                                <asp:DropDownList CssClass="form-control" ID="pro" runat="server" DataSourceID="SqlDataSource3" DataTextField="ART_NOMBRE" DataValueField="ART_CVE_ARTICULOS">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:VINATERIAConnectionString %>" SelectCommand="SELECT [ART_CVE_ARTICULOS], [ART_NOMBRE] FROM [ARTICULOS]"></asp:SqlDataSource>
                            </div>
                            <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Existencias" TextMode="Number"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                    <asp:Button CssClass="btn btn-primary" ID="Button1" runat="server" Text="Actualizar" OnClick="Selection"/>
                </div>
                </div>

            </div>
        </div>
        
        
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    <script src="principal/js/func.js"></script>
        

    </form>
    </body>
</html>
