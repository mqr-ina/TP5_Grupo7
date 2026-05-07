using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace TP5_Grupo7_PIII
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        Sucursales sucursales = new Sucursales();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarSucursales();
            }
        }
        private void CargarSucursales()
        {
            gvListar.DataSource = sucursales.obtenerSucursales();
            gvListar.DataBind();


        }

        protected void butMostrarT_Click(object sender, EventArgs e)
        {
                        tbIdSuc.Text = "";
                        CargarSucursales();
        }

        protected void butFiltrar_Click(object sender, EventArgs e)
        {
                       int idSucursal = Convert.ToInt32(tbIdSuc.Text);
                       gvListar.DataSource = sucursales.filtrarSucursal(idSucursal.ToString());
                       gvListar.DataBind();
        }
    }
}