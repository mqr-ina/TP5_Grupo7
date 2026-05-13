using Microsoft.Win32;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP5_Grupo7_PIII
{
    public partial class AgregarSucursal : System.Web.UI.Page
    {
        Sucursales sucursal = new Sucursales();
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
            int provincia_id = 0;
            Sucursales sucursales = new Sucursales();
            provincia_id=sucursales.obtenerIdProvincia(item);
            return provincia_id;

            //int idProvincia = 0;

            //if (item == "Buenos Aires")
            //    idProvincia = 1;
            //if (item == "Entre Rios")
            //    idProvincia = 2;
            //if (item == "Santa Fe")
            //    idProvincia = 3;
            //if (item == "La Pampa")
            //    idProvincia = 4;
            //if (item == "Cordoba")
            //    idProvincia = 5;
            //if (item == "Misiones")
            //    idProvincia = 6;
            //if (item == "Chaco")
            //    idProvincia = 7;

            //    return idProvincia;
        }
        private void mostrarMensaje(int filasAfectadas)
        {
            if (filasAfectadas == 1)
            {
                lblMensaje.Text = "La sucursal se ha agregado con éxito";
                lblMensaje.ForeColor = System.Drawing.Color.Green;
            }
            else
            {
                lblMensaje.Text = "No se pudo realizar la operación";
                lblMensaje.ForeColor = System.Drawing.Color.Red;
            }
        }
        
        /*
         private void mostrarMensaje(int filasAfectadas)
        {
           lblMensaje.Text = filasAfectadas == 1 ? "La sucursal se ha agregado con éxito" : "No se pudo realizar la operación";
           lblMensaje.ForeColor = filasAfectadas == 1 ? System.Drawing.Color.Green : System.Drawing.Color.Red;
         }
        */
        private void limpiarCampos()
        {
            txtNombreSuc.Text = "";
            txtDescripcion.Text = "";
            txtDireccion.Text = "";
            ddlProvincias.SelectedIndex = 0;
        }
        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            if (sucursal.existeSucursal(txtNombreSuc.Text))
            {
                lblMensaje.Text = "La sucursal ya existe";
                lblMensaje.ForeColor = System.Drawing.Color.Red;
                return;
            }
            
            Sucursales sucursales = new Sucursales();
            int filasAfectadas = sucursales.agregarSucursal(txtNombreSuc.Text, txtDescripcion.Text, obtenerIdProvincia(ddlProvincias.SelectedItem.Text), txtDireccion.Text);

            mostrarMensaje(filasAfectadas);

            //lIMPIAMOS CAMPOS//
            limpiarCampos();
        }
    }
}