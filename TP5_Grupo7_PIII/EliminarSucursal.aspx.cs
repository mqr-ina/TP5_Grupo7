using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP5_Grupo7_PIII
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        AccederDatos conexion = new AccederDatos();
        Sucursales sucursales = new Sucursales();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private bool sucursalChequeada // <- esto es una propiedad privada para verificar si se presionó ese botón.
        {
            get { return ViewState["sucursalChequeada"] != null && (bool)ViewState["sucursalChequeada"]; }
            set { ViewState["sucursalChequeada"] = value; }
        }
        protected void butEliminar_Click(object sender, EventArgs e)
        {
            
            if (sucursalChequeada) //si el botón de chequear sucursal se presionó...
            {
                deleteSucursal(tbEliminarSucursal.Text); // elimina la sucursal.
                tbEliminarSucursal.Text = "";
                sucursalChequeada = false;
            }
            else
            {
                lblSucursalAEliminar.Text = "¡ATENCIÓN! : Primero debe chequear la sucursal.";         
            }                     
        }

        private void deleteSucursal(string id)
        {
           int afectada = sucursales.eliminarSucursal(id);
            if (afectada==1)
            {
                lblEliminado.Text = "La sucursal se ha eliminado con éxito";
                lblEliminado.Visible = true;
                lblEliminado.ForeColor = System.Drawing.Color.Green;
            }
            else
            {
                lblEliminado.Text = "No se encontró la sucursal o hubo un error";
                lblEliminado.Visible = true;
                lblEliminado.ForeColor = System.Drawing.Color.Red;
            }
        }

        protected void btnChequearSucursal_Click(object sender, EventArgs e)
        {
           
            sucursalChequeada = false;

            if (string.IsNullOrWhiteSpace(tbEliminarSucursal.Text))
            {
                lblEliminado.Text = "Ingrese un ID de sucursal";
                lblEliminado.ForeColor = System.Drawing.Color.Red;
                lblEliminado.Visible = true;
                return;
            }

            //int idSucursal = Convert.ToInt32(tbEliminarSucursal.Text); ==> Con esto el código rompía 
            int idSucursal;
            if (!int.TryParse(tbEliminarSucursal.Text, out idSucursal))
            {
                lblSucursalAEliminar.Text = "Ingrese únicamente valores numéricos";
                return;
            }
            string nombre = sucursales.obtenerNombreSucursal(idSucursal);

            if (nombre != null)
            {
                lblSucursalAEliminar.Text = "La sucursal a eliminar es: " + nombre;
                sucursalChequeada = true;
            }
            else
               lblSucursalAEliminar.Text = "No existe ese ID de sucursal";                
        }
    }
}