<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListarSucursal.aspx.cs" Inherits="TP5_Grupo7_PIII.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="StyleSheet1.css" rel="stylesheet" />
</head>
<body class="body-listar">
    <form id="form1" runat="server">
        <div class="nav-bar">
            <asp:HyperLink ID="hlAgregarSuc" runat="server" NavigateUrl="~/AgregarSucursal.aspx" CssClass="nav-link">Agregar Sucursal</asp:HyperLink>
            <asp:HyperLink ID="hlEliminarSucursal" runat="server" NavigateUrl="~/EliminarSucursal.aspx" CssClass="nav-link">Eliminar Sucursal</asp:HyperLink>
        </div>
        <div class="contenedor">
            <h2 class="titulo-seccion">LISTADO SUCURSALES</h2>
            <div class="campo">
                <label>Busqueda ingrese Id sucursal:</label>
                <asp:TextBox ID="tbIdSuc" runat="server" CssClass="input-campo"></asp:TextBox>
                <asp:RegularExpressionValidator ID="revIdSucursal" runat="server" ControlToValidate="tbIdSuc" ErrorMessage="Se permiten solo numeros en el ID Sucursal" ValidationExpression="^[0-9]+$" CssClass="validador">*</asp:RegularExpressionValidator>
                <asp:Button ID="butFiltrar" runat="server" Text="Filtrar" OnClick="butFiltrar_Click" CssClass="btn-principal" />
                <asp:Button ID="butMostrarT" runat="server" OnClick="butMostrarT_Click" Text="Mostrar Todos" CssClass="btn-principal" />
            </div>
            <div class="campo">
                <asp:Label ID="lblProvincia" runat="server" Text="Búsqueda seleccione una Provincia:"></asp:Label>
                <asp:DropDownList ID="ddlProvincias" runat="server" AppendDataBoundItems="true" CssClass="input-campo">
                    <asp:ListItem Value="0">-- Seleccione una provincia --</asp:ListItem>
                </asp:DropDownList>
                <asp:Button ID="butFiltrarProv" runat="server" Text="Filtrar por provincia" OnClick="butFiltrarprov_Click" CssClass="btn-principal" />
            </div>
            <asp:ValidationSummary ID="vsErrores" runat="server" ForeColor="#CC3300" CssClass="validador" />
            <asp:Label ID="lblMensaje" runat="server" CssClass="lbl-mensaje"></asp:Label>
        </div>
        <asp:GridView ID="gvListar" runat="server" CssClass="gridview-listar"></asp:GridView>
    </form>
</body>
</html>