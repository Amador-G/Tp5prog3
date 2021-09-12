<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EliminarSucursal.aspx.cs" Inherits="Tp5Prog3.EliminarSucursal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 390px;
            text-align: center;
        }
        .auto-style4 {
            text-align: center;
        }
        .auto-style5 {
            text-align: center;
            width: 577px;
        }
        .auto-style6 {
            height: 37px;
        }
        .auto-style7 {
            height: 37px;
            width: 295px;
            font-size: xx-large;
        }
        .auto-style8 {
            width: 199px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">
                        <asp:HyperLink ID="hlAgregarSucursal" runat="server" NavigateUrl="AgregarSucursal.aspx">Agregar Sucursal</asp:HyperLink>
                    </td>
                    <td class="auto-style5">
                        <asp:HyperLink ID="hlListarSucursal" runat="server" NavigateUrl="ListarSucursal.aspx">Listar Sucursales</asp:HyperLink>
                    </td>
                    <td class="auto-style4">
                        <asp:HyperLink ID="hlEliminarSucursal" runat="server" NavigateUrl="EliminarSucursal.aspx">Eliminar Sucursal</asp:HyperLink>
                    </td>
                </tr>
            </table>
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style7"><strong>Eliminar Sucursales</strong></td>
                <td class="auto-style6"></td>
            </tr>
        </table>
        <p>
        </p>
        <table class="auto-style1">
            <tr>
                <td class="auto-style8">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8">Ingrese ID Sucursal:</td>
                <td>
                    <asp:TextBox ID="txtID" runat="server" Width="285px" ValidationGroup="G1"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnID" runat="server" OnClick="btnID_Click" Text="Eliminar" ValidationGroup="G1" />
                </td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;</td>
                <td>
                    <asp:RegularExpressionValidator ID="revIDSuc" runat="server" ControlToValidate="txtID" ValidationExpression="^\d+$" ValidationGroup="G1">Valor Incorrecto</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">
                    <asp:Label ID="lblMensajeEliminado" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
