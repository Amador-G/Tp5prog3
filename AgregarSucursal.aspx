<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AgregarSucursal.aspx.cs" Inherits="Tp5Prog3.AgregarSucursal" %>

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
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td>
                        <asp:HyperLink ID="hlAgregarSucursales" runat="server" NavigateUrl="~/AgregarSucursal.aspx">Agregar Sucursales</asp:HyperLink>
                    </td>
                    <td>
                        <asp:HyperLink ID="hlListadoDeSucursales" runat="server" NavigateUrl="~/ListarSucursal.aspx">Listado de Sucursales</asp:HyperLink>
                    </td>
                    <td>
                        <asp:HyperLink ID="hlEliminarSucursal" runat="server" NavigateUrl="~/EliminarSucursal.aspx">Eliminar Sucursal</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td style="font-size: xx-large; font-weight: bold;">GRUPO N° 1</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="font-size: x-large">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="font-size: x-large; font-weight: bold;">Agregar Sucursal</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">Nombre Sucursal :</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtNombreSucursal" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style2">
                        <asp:RequiredFieldValidator ID="rfvNombreSucursal" runat="server" ControlToValidate="txtNombreSucursal" ErrorMessage="Ingrese un nombre." ValidationGroup="G1">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Descripción :</td>
                    <td>
                        <asp:TextBox ID="txtDescripcion" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfvDescripcion" runat="server" ControlToValidate="txtDescripcion" ErrorMessage="Ingrese una Descripción" ValidationGroup="G1">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Provincia :</td>
                    <td>
                        <asp:DropDownList ID="ddlProvincias" runat="server">
                        </asp:DropDownList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Dirección : </td>
                    <td>
                        <asp:TextBox ID="txtDireccion" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfvDireccion" runat="server" ControlToValidate="txtDireccion" ErrorMessage="ingrese una direccion" ValidationGroup="G1">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2"></td>
                    <td class="auto-style2"></td>
                    <td class="auto-style2">
                        <asp:ValidationSummary ID="vsingresos" runat="server" ValidationGroup="G1" />
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="btnGuardar" runat="server" Text="Guardar" ValidationGroup="G1" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
