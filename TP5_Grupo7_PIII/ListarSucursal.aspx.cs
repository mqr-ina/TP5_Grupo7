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
                cargarProvincias();
                lblMensaje.Visible = false;
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
        private void CargarSucursales()
        {
            gvListar.DataSource = sucursales.obtenerSucursales();
            gvListar.DataBind();
        }
        protected void butMostrarT_Click(object sender, EventArgs e)
        {
            Limpiarcampos();
            CargarSucursales();
        }


        protected void butFiltrar_Click(object sender, EventArgs e)
        {
            string idSucursal = tbIdSuc.Text;
            if (tbIdSuc.Text.Trim() == "")
            {
                lblMensaje.Text = "Ingrese un ID de sucursal";
                lblMensaje.Visible = true;
                return;
            }
            gvListar.DataSource = sucursales.filtrarSucursal(idSucursal);
            gvListar.DataBind();
            Limpiarcampos();
        }

        /*
        protected void butFiltrar_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrWhiteSpace(tbIdSuc.Text))
            {
                lblMensaje.Text = "Ingrese un ID de sucursal";
                lblMensaje.Visible = true;
                return;
            }
            gvListar.DataSource = sucursales.filtrarSucursal(tbIdSuc.Text);
            gvListar.DataBind();
            Limpiarcampos();
        }
        */

        private void Limpiarcampos()
        {
            tbIdSuc.Text = "";
        }

        protected void butFiltrarprov_Click(object sender, EventArgs e)
        {
            string idProvincia = ddlProvincias.SelectedValue;
            gvListar.DataSource = sucursales.filtrarSucursalProv(Convert.ToInt32(idProvincia));
            gvListar.DataBind();
            Limpiarcampos();


        }
    }
}