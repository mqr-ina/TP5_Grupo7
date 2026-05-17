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
            // Se oculta el mensaje de error al mostrar todos
            lblMensaje.Visible = false;
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

            // Validacion que el ID sea un numero
            foreach (char c in tbIdSuc.Text.Trim())
            {
                if (!char.IsDigit(c))
                {
                    lblMensaje.Text = "El ID de sucursal debe ser un número.";
                    lblMensaje.Visible = true;
                    return;
                }
            }

            // Se guarda el resultado para verificar si hay datos
            DataTable resultado = sucursales.filtrarSucursal(idSucursal);
            bool hayDatos = false;
            foreach (DataRow fila in resultado.Rows)
            {
                hayDatos = true;
                break;
            }

            if (!hayDatos)
            {
                lblMensaje.Text = "No se encontraron sucursales con ese ID.";
                lblMensaje.Visible = true;
            }
            else
            {
                lblMensaje.Visible = false;
            }

            gvListar.DataSource = resultado;
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

            // Se verifica si hay datos al filtrar por provincia
            DataTable resultado = sucursales.filtrarSucursalProv(Convert.ToInt32(idProvincia));
            bool hayDatos = false;
            foreach (DataRow fila in resultado.Rows)
            {
                hayDatos = true;
                break;
            }

            if (!hayDatos)
            {
                lblMensaje.Text = "No se encontraron sucursales para esa provincia.";
                lblMensaje.Visible = true;
            }
            else
            {
                lblMensaje.Visible = false;
            }

            gvListar.DataSource = resultado;
            gvListar.DataBind();
            Limpiarcampos();
        }
    }
}