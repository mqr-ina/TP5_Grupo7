using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP5_Grupo7_PIII
{
    public partial class AgregarSucursal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                 cargarProvincias();
            }
        }

        private void cargarProvincias()
        {
            Sucursales sucursales = new Sucursales();
            ddlProvincias.DataSource = sucursales.obtenerProvincias();
            ddlProvincias.DataTextField = "DescripcionProvincia";
            ddlProvincias.DataValueField = "Id_Provincia";
            ddlProvincias.DataBind();
        }
        private int obtenerIdProvincia(string item)
        {
            int idProvincia = 0;

            if (item == "Buenos Aires")
                idProvincia = 1;
            if (item == "Entre Rios")
                idProvincia = 2;
            if (item == "Santa Fe")
                idProvincia = 3;
            if (item == "La Pampa")
                idProvincia = 4;
            if (item == "Cordoba")
                idProvincia = 5;
            if (item == "Misiones")
                idProvincia = 6;
            if (item == "Chaco")
                idProvincia = 7;

                return idProvincia;
        }
        private void mostrarMensaje(int filasAfectadas)
        {
            if (filasAfectadas == 1)
                lblMensaje.Text = "Se agregó correctamente la sucursal";
            else
                lblMensaje.Text = "No se pudo realizar la operación";
        }
        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            AccederDatos accesoDatos = new AccederDatos();

            string cadenaSqlAgregar = "INSERT INTO Sucursal (NombreSucursal, DescripcionSucursal, Id_ProvinciaSucursal, DireccionSucursal) SELECT ' " + txtNombreSuc.Text + " ', ' " + txtDescripcion.Text + " ' , " + obtenerIdProvincia(ddlProvincias.SelectedItem.Text) + " , ' " + txtDireccion.Text + " '";

            int filasAfectadas = accesoDatos.ejecutarConsulta(cadenaSqlAgregar);

            mostrarMensaje(filasAfectadas);
        }
    }
}