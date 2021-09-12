<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListarSucursal.aspx.cs" Inherits="Tp5Prog3.ListarSucursal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style4 {
            width: 341px;
            height: 47px;
        }
        .auto-style6 {
            height: 47px;
        }
        .auto-style7 {
            width: 341px;
            height: 56px;
        }
        .auto-style9 {
            height: 56px;
        }
        .auto-style10 {
            width: 341px;
            height: 59px;
        }
        .auto-style12 {
            height: 59px;
        }
        .auto-style13 {
            width: 370px;
            height: 47px;
        }
        .auto-style14 {
            width: 370px;
            height: 56px;
        }
        .auto-style15 {
            width: 370px;
            height: 59px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style4">
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/AgregarSucursal.aspx">Agregar sucursal</asp:HyperLink>
                    </td>
                    <td class="auto-style13">
                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/ListarSucursal.aspx">Listado de Sucursales</asp:HyperLink>
                    </td>
                    <td class="auto-style6">
                        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/EliminarSucursal.aspx">Eliminar sucursal</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td style="font-weight: bold; font-size: x-large" class="auto-style7">Listado de sucursales</td>
                    <td class="auto-style14"></td>
                    <td class="auto-style9"></td>
                </tr>
                <tr>
                    <td class="auto-style10">Busqueda ingrese ID de la sucursar:</td>
                    <td class="auto-style15">
                        <asp:TextBox ID="txtIdSucursal" runat="server" Width="114px"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtIdSucursal" ValidationExpression="^\d+$">Por favor ingrese un numero</asp:RegularExpressionValidator>
                        <br />
                    </td>
                    <td class="auto-style12">
                        <asp:Button ID="btnFiltrar" runat="server" OnClick="btnFiltrar_Click" Text="Filtrar" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnMostrar" runat="server" OnClick="btnMostrar_Click" Text="Mostrar todos" />
                    </td>
                </tr>
                
            </table>
        </div>
        <asp:GridView ID="GvSucursales" runat="server">
        </asp:GridView>
    </form>
</body>
</html>
