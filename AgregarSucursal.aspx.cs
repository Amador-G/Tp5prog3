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
    }
}