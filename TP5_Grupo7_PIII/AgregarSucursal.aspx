<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AgregarSucursal.aspx.cs" Inherits="TP5_Grupo7_PIII.AgregarSucursal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="StyleSheet1.css" rel="stylesheet" />
</head>
<body class="body-agregar">
    <form id="form1" runat="server">
        <div class="nav-bar">
            <asp:HyperLink ID="hlListadoS" runat="server" NavigateUrl="~/ListarSucursal.aspx" CssClass="nav-link">Listado Sucursales</asp:HyperLink>
            <asp:HyperLink ID="hlEliminarS" runat="server" NavigateUrl="~/EliminarSucursal.aspx" CssClass="nav-link">Eliminar Sucursales</asp:HyperLink>
        </div>
        <div class="contenedor">
            <h1 class="titulo-grupo">GRUPO N°7</h1>
            <h2 class="titulo-seccion">Agregar Sucursal</h2>
            <div class="campo">
                <label>Nombre sucursal:</label>
                <asp:TextBox ID="txtNombreSuc" runat="server" CssClass="input-campo"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvNombreS" runat="server" ControlToValidate="txtNombreSuc" ErrorMessage="Ingrese Sucursal" ValidationGroup="AgregarF" CssClass="validador">*</asp:RequiredFieldValidator>
            </div>
            <div class="campo">
                <label>Descripcion:</label>
                <asp:TextBox ID="txtDescripcion" runat="server" CssClass="input-campo"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvDescS" runat="server" ControlToValidate="txtDescripcion" ErrorMessage="Ingrese Descripcion" ValidationGroup="AgregarF" CssClass="validador">*</asp:RequiredFieldValidator>
            </div>
            <div class="campo">
                <label>Provincia:</label>
                <asp:DropDownList ID="ddlProvincias" runat="server" CssClass="input-campo"></asp:DropDownList>
            </div>
            <div class="campo">
                <label>Direccion:</label>
                <asp:TextBox ID="txtDireccion" runat="server" CssClass="input-campo"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvDireccionS" runat="server" ControlToValidate="txtDireccion" ErrorMessage="Ingrese Direccion" ValidationGroup="AgregarF" CssClass="validador">*</asp:RequiredFieldValidator>
            </div>
            <div class="campo-boton">
                <asp:Button ID="btnAceptar" runat="server" Text="Aceptar" OnClick="btnAceptar_Click" ValidationGroup="AgregarF" CssClass="btn-principal" />
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="#FF3300" ValidationGroup="AgregarF" />
            </div>
            <asp:Label ID="lblMensaje" runat="server" CssClass="lbl-mensaje"></asp:Label>
        </div>
    </form>
</body>
</html>