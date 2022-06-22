<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Proyect_2._0._1.Login.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="keywords" content="">

    <link rel="icon" type="image/png" href="../index/images/logo.ico" />

    <title>MAJUMI - LOGIN</title>

    <link rel="stylesheet" href="../index/css/master.css" />

    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 302px;
        }

        .auto-style3 {
            width: 351px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">

        <div class="login-box">
            <img src="../index/images/logo.png" class="avatar" alt="Avatar Image" />
            <h1>Inicio de Sesión</h1>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3">Usuario:</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:TextBox placeholder="Usuario" ID="user" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Contraseña:</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:TextBox ID="pass" runat="server" TextMode="Password" placeholder="Contraseña"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Button ID="Button1" runat="server" Text="Ingresar" OnClick="Button1_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="label" id="label_res">
                        <asp:Label  ID="Label1" runat="server"></asp:Label>
                        <a href="../index/default.aspx">Inicio</a>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
