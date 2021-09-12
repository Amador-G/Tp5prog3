using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Tp5Prog3
{
    public partial class AgregarSucursal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ConsultaSQL Consulta = new ConsultaSQL();
                ddlProvincias.DataSource = Consulta.Consulta("select DescripcionProvincia,Id_Provincia from Provincia");
                ddlProvincias.DataTextField = "DescripcionProvincia";
                ddlProvincias.DataValueField = "Id_Provincia";
                ddlProvincias.DataBind();
                ddlProvincias.Items.Insert(0, new ListItem("[Seleccionar]", "0"));
            }
        }

        protected void GuardarSucursal(object sender, EventArgs e)
        {
            ConsultaSQL Consulta = new ConsultaSQL();
            if ((Consulta.ConsultaFilas("Insert into Sucursal (NombreSucursal,DescripcionSucursal,Id_ProvinciaSucursal, DireccionSucursal) values ('" + txtNombreSucursal.Text + "','" + txtDescripcion.Text + "','" + ddlProvincias.SelectedValue + "','" + txtDireccion.Text + "')") != 0))
            {
                lblCargaExitosa.Text = "Cargado con Exito!";
                LimpiezaCampos();
            }
            else
            {
                lblCargaExitosa.Text = "Error al cargar el registro";
                LimpiezaCampos();
            }
        }

        private void LimpiezaCampos()
        {
            txtNombreSucursal.Text = "";
            txtDescripcion.Text = "";
            txtDireccion.Text = "";
            ddlProvincias.SelectedIndex = 0;
        }
    }
}