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

        protected void butEliminar_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrWhiteSpace(tbEliminarSucursal.Text))
            {
                lblEliminado.Text = "Ingrese un ID de sucursal";
                lblEliminado.ForeColor = System.Drawing.Color.Red;
                lblEliminado.Visible = true;
                return;
            }
            deleteSucursal(tbEliminarSucursal.Text);
            tbEliminarSucursal.Text = "";
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

    }
}