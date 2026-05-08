<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListarSucursal.aspx.cs" Inherits="TP5_Grupo7_PIII.WebForm1" %>

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
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style17">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style17">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style18"><strong>LISTADO SUCURSALES</strong></td>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style17">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style17">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6"></td>
                    <td class="auto-style7">Busqueda ingrese Id sucursal:</td>
                    <td class="auto-style11">
                        <asp:TextBox ID="tbIdSuc" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style14"></td>
                    <td class="auto-style16">
                        <asp:Button ID="butFiltrar" runat="server" Text="Filtrar" Width="81px" OnClick="butFiltrar_Click" />
                    </td>
                    <td class="auto-style8">
                        <asp:Button ID="butMostrarT" runat="server" OnClick="butMostrarT_Click" Text="Mostrar Todos" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style17">
                        <asp:Label ID="lblMensaje" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
        <asp:GridView ID="gvListar" runat="server" Width="1354px">
        </asp:GridView>
    </form>
</body>
</html>
