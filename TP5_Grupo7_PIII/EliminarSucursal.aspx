<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EliminarSucursal.aspx.cs" Inherits="TP5_Grupo7_PIII.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="StyleSheet1.css" rel="stylesheet" />
</head>
<body class="body-eliminar">
    <form id="form1" runat="server">
        <div class="nav-bar">
            <asp:HyperLink ID="hlAgregarSucursal" runat="server" NavigateUrl="~/AgregarSucursal.aspx" CssClass="nav-link">Agregar Sucursal</asp:HyperLink>
            <asp:HyperLink ID="hlListadoSucursales" runat="server" NavigateUrl="~/ListarSucursal.aspx" CssClass="nav-link">Listado de sucursales</asp:HyperLink>
        </div>
        <div class="contenedor">
            <h2 class="titulo-seccion">ELIMINAR SUCURSAL</h2>
            <div class="campo">
                <asp:Label ID="lbIngreSuc" runat="server" Text="Ingresar ID Sucursal"></asp:Label>
                <asp:TextBox ID="tbEliminarSucursal" runat="server" CssClass="input-campo"></asp:TextBox>
                <asp:Button ID="btnChequearSucursal" runat="server" OnClick="btnChequearSucursal_Click" Text="Chequear Sucursal" CssClass="btn-principal" ValidationGroup="VChequear" />
                <asp:Button ID="butEliminar" runat="server" Text="Eliminar" OnClick="butEliminar_Click" CssClass="btn-eliminar" />
            </div>
            <asp:RegularExpressionValidator ID="revNumeros" runat="server" ControlToValidate="tbEliminarSucursal" ErrorMessage="La ID no puede contener letras ni espacios" ForeColor="Red" ValidationExpression="^\d+$" ValidationGroup="VChequear"></asp:RegularExpressionValidator>
            <asp:Label ID="lblEliminado" runat="server" CssClass="lbl-mensaje"></asp:Label>
            <asp:Label ID="lblSucursalAEliminar" runat="server" CssClass="lbl-advertencia"></asp:Label>
        </div>
    </form>
</body>
</html>