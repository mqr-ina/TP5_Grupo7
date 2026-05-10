<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AgregarSucursal.aspx.cs" Inherits="TP5_Grupo7_PIII.AgregarSucursal" %>

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
        .auto-style3 {
            width: 186px;
        }
        .auto-style4 {
            height: 23px;
            width: 186px;
        }
        .auto-style7 {
            height: 48px;
        }
        .auto-style8 {
            width: 186px;
            height: 48px;
        }
        .auto-style9 {
            height: 48px;
            width: 194px;
        }
        .auto-style10 {
            width: 194px;
        }
        .auto-style11 {
            height: 23px;
            width: 194px;
        }
        .auto-style12 {
            height: 26px;
        }
        .auto-style13 {
            width: 186px;
            height: 26px;
        }
        .auto-style14 {
            width: 194px;
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style7"></td>
                    <td class="auto-style8">
                        <asp:HyperLink ID="hlAgregarS" runat="server" NavigateUrl="~/AgregarSucursal.aspx">Agregar Sucursal</asp:HyperLink>
                    </td>
                    <td class="auto-style8">
                        <asp:HyperLink ID="hlListadoS" runat="server" NavigateUrl="~/ListarSucursal.aspx">Listado Sucursales</asp:HyperLink>
                    </td>
                    <td class="auto-style9">
                        <asp:HyperLink ID="hlEliminarS" runat="server" NavigateUrl="~/EliminarSucursal.aspx">Eliminar Sucursales</asp:HyperLink>
                    </td>
                    <td class="auto-style7"></td>
                    <td class="auto-style7"></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style3"><strong style="font-size: x-large">GRUPO N°7</strong></td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2"></td>
                    <td class="auto-style4"></td>
                    <td class="auto-style4"></td>
                    <td class="auto-style11"></td>
                    <td class="auto-style2"></td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style3"><strong style="font-size: large">Agregar Sucursal</strong></td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style3">Nombre sucursal:</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtNombreSuc" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style10">
                        <asp:RequiredFieldValidator ID="rfvNombreS" runat="server" ControlToValidate="txtNombreSuc" ErrorMessage="Ingrese Sucursal" ValidationGroup="AgregarF">*</asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style3">Descripcion:</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtDescripcion" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style10">
                        <asp:RequiredFieldValidator ID="rfvDescS" runat="server" ControlToValidate="txtDescripcion" ErrorMessage="Ingrese Descripcion" ValidationGroup="AgregarF">*</asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style3">Provincia:</td>
                    <td class="auto-style3">
                        <asp:DropDownList ID="ddlProvincias" runat="server" Width="131px">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style10">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style12"></td>
                    <td class="auto-style13">Direccion:</td>
                    <td class="auto-style13">
                        <asp:TextBox ID="txtDireccion" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style14">
                        <asp:RequiredFieldValidator ID="rfvDireccionS" runat="server" ControlToValidate="txtDireccion" ErrorMessage="Ingrese Direccion" ValidationGroup="AgregarF">*</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style12"></td>
                    <td class="auto-style12"></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style3">
                        <asp:Button ID="btnAceptar" runat="server" CssClass="auto-style7" Text="Aceptar" Width="111px" OnClick="btnAceptar_Click" ValidationGroup="AgregarF" />
                    </td>
                    <td class="auto-style10">
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="#FF3300" ValidationGroup="AgregarF" />
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style3">
                        <asp:Label ID="lblMensaje" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style10">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
