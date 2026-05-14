<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EliminarSucursal.aspx.cs" Inherits="TP5_Grupo7_PIII.WebForm2" %>

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
            width: 328px;
            font-size: x-large;
            height: 56px;
        }
        .auto-style6 {
            width: 328px;
        }
        .auto-style8 {
            width: 328px;
            text-align: center;
        }
        .auto-style9 {
            text-align: center;
        }
        .auto-style12 {
            width: 312px;
        }
        .auto-style13 {
            width: 145px;
        }
        .auto-style14 {
            height: 26px;
        }
        .auto-style15 {
            width: 328px;
            height: 26px;
        }
        .auto-style16 {
            width: 312px;
            height: 26px;
        }
        .auto-style17 {
            width: 145px;
            height: 26px;
        }
        .auto-style18 {
            height: 56px;
        }
        .auto-style19 {
            width: 312px;
            height: 56px;
        }
        .auto-style20 {
            width: 145px;
            height: 56px;
        }
    </style>
</head>

<body style="background-color: #6495ED ;">    <form id="form1" runat="server">

        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style14"></td>
                    <td class="auto-style15">
                        <asp:HyperLink ID="hlAgregarSucursal" runat="server" NavigateUrl="~/AgregarSucursal.aspx">Agregar Sucursal</asp:HyperLink>
                    </td>
                    <td class="auto-style16">
                        <asp:HyperLink ID="hlListadoSucursales" runat="server" NavigateUrl="~/ListarSucursal.aspx">Listado de sucursales</asp:HyperLink>
                    </td>
                    <td class="auto-style17">
                        <asp:HyperLink ID="hlEliminarSucursal" runat="server" NavigateUrl="~/EliminarSucursal.aspx">Eliminar sucursal</asp:HyperLink>
                    </td>
                    <td class="auto-style14"></td>
                    <td class="auto-style14"></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style18"></td>
                    <td class="auto-style4"><strong>ELIMINAR SUCURSAL</strong></td>
                    <td class="auto-style19"></td>
                    <td class="auto-style20"></td>
                    <td class="auto-style18"></td>
                    <td class="auto-style18"></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style8">
                        <asp:Label ID="lbIngreSuc" runat="server" Text="Ingresar ID Sucursal"></asp:Label>
                    </td>
                    <td class="auto-style12">
                        <asp:TextBox ID="tbEliminarSucursal" runat="server" Width="271px"></asp:TextBox>
                    </td>
                    <td class="auto-style13">
                        <asp:Button ID="butEliminar" runat="server" Text="Eliminar" ValidationGroup="VEliminar" OnClientClick="return confirm('¿Confirma que desea eliminar esta sucursal?');" OnClick="butEliminar_Click" />
                    </td>
                    <td>
                        <asp:RegularExpressionValidator ID="revNumeros" runat="server" ControlToValidate="tbEliminarSucursal" ErrorMessage="La ID no puede contener letras ni espacios" ForeColor="Red" ValidationExpression="^\d+$" ValidationGroup="VEliminar"></asp:RegularExpressionValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style14"></td>
                    <td class="auto-style15">
                        &nbsp;</td>
                    <td class="auto-style16">
                        <asp:Label ID="lblEliminado" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style17"></td>
                    <td class="auto-style14"></td>
                    <td class="auto-style14"></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style14"></td>
                    <td class="auto-style15"></td>
                    <td class="auto-style16"></td>
                    <td class="auto-style17"></td>
                    <td class="auto-style14"></td>
                    <td class="auto-style14"></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
