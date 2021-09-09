using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

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
            ConsultaSQL Consulta2 = new ConsultaSQL();
            //string id_Sucursal =  Convert.ToInt32(Consulta2.Consulta("select count (Id_Sucursal) from Sucursal"));
            /*if((Consulta.ConsultaFilas("Insert into Sucursal (NombreSucursal,DescripcionSucursal,Id_ProvinciaSucursal, DireccionSucursal,Id_Sucursal) values ('" + txtNombreSucursal.Text + "'," + txtDescripcion.Text + "'," + ddlProvincias.SelectedValue + "'," + txtDireccion.Text + "'," + id_Sucursal)!=0))
            {
                lblCargaExitosa.Text = "Cargado con Exito!";
            }
            else
            {
                lblCargaExitosa.Text = "Error al cargar el registro";
            }*/
        }
    }
}