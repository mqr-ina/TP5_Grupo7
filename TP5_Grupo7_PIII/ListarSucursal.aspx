<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListarSucursal.aspx.cs" Inherits="TP5_Grupo7_PIII.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 118%;
        }
        .auto-style4 {
            width: 33px;
        }
        .auto-style6 {
            width: 33px;
            height: 26px;
        }
        .auto-style7 {
            width: 348px;
            height: 26px;
        }
        .auto-style8 {
            height: 26px;
        }
        .auto-style9 {
            width: 348px;
        }
        .auto-style11 {
            height: 26px;
            width: 168px;
        }
        .auto-style12 {
            width: 168px;
        }
        .auto-style13 {
            width: 106px;
        }
        .auto-style14 {
            height: 26px;
            width: 106px;
        }
        .auto-style16 {
            height: 26px;
            width: 190px;
        }
        .auto-style17 {
            width: 190px;
        }
        .auto-style18 {
            width: 348px;
            height: 26px;
            font-size: x-large;
        }
        .auto-style19 {
            width: 125px;
        }
        .auto-style20 {
            height: 26px;
            width: 125px;
        }
        .auto-style21 {
            width: 33px;
            height: 23px;
        }
        .auto-style22 {
            width: 348px;
            height: 23px;
        }
        .auto-style23 {
            width: 168px;
            height: 23px;
        }
        .auto-style24 {
            width: 106px;
            height: 23px;
        }
        .auto-style25 {
            width: 190px;
            height: 23px;
        }
        .auto-style26 {
            width: 125px;
            height: 23px;
        }
        .auto-style27 {
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style9">
                        <asp:HyperLink ID="hlAgregarSuc" runat="server" NavigateUrl="~/AgregarSucursal.aspx">Agregar Sucursal</asp:HyperLink>
                    </td>
                    <td class="auto-style12">
                        <asp:HyperLink ID="hlListado" runat="server" NavigateUrl="~/ListarSucursal.aspx">Listado de Sucursales</asp:HyperLink>
                    </td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style17">
                        <asp:HyperLink ID="hlEliminarSucursal" runat="server" NavigateUrl="~/EliminarSucursal.aspx">Eliminar Sucursal</asp:HyperLink>
                    </td>
                    <td class="auto-style19">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style21"></td>
                    <td class="auto-style22"></td>
                    <td class="auto-style23"></td>
                    <td class="auto-style24"></td>
                    <td class="auto-style25"></td>
                    <td class="auto-style26"></td>
                    <td class="auto-style27"></td>
                    <td class="auto-style27"></td>
                    <td class="auto-style27"></td>
                    <td class="auto-style27"></td>
                </tr>
                <tr>
                    <td class="auto-style6"></td>
                    <td class="auto-style18"><strong>LISTADO SUCURSALES</strong></td>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style14"></td>
                    <td class="auto-style16"></td>
                    <td class="auto-style20">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style17">&nbsp;</td>
                    <td class="auto-style19">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6"></td>
                    <td class="auto-style7">Busqueda ingrese Id sucursal:</td>
                    <td class="auto-style11">
                        <asp:TextBox ID="tbIdSuc" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style14">
                        <asp:RegularExpressionValidator ID="revIdSucursal" runat="server" ControlToValidate="tbIdSuc" ErrorMessage="Se permiten solo numeros en el ID Sucursal" ValidationExpression="^[0-9]+$">*</asp:RegularExpressionValidator>
                    </td>
                    <td class="auto-style16">
                        <asp:Button ID="butFiltrar" runat="server" Text="Filtrar" Width="81px" OnClick="butFiltrar_Click" />
                    </td>
                    <td class="auto-style20">
                        <asp:Button ID="butMostrarT" runat="server" OnClick="butMostrarT_Click" Text="Mostrar Todos" />
                    </td>
                    <td class="auto-style8">
                        &nbsp;</td>
                    <td class="auto-style8">
                        &nbsp;</td>
                    <td class="auto-style8">
                        &nbsp;</td>
                    <td class="auto-style8">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style12">
                        <asp:ValidationSummary ID="vsErrores" runat="server" ForeColor="#CC3300" Width="268px" />
                    </td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style17">
                        <asp:Label ID="lblMensaje" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td class="auto-style19">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
        <asp:GridView ID="gvListar" runat="server" Width="1354px">
        </asp:GridView>
    </form>
</body>
</html>
