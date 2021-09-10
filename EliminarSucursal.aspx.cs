using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Tp5Prog3
{
    public partial class EliminarSucursal : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnID_Click(object sender, EventArgs e)
        {
            ConsultaSQL query = new ConsultaSQL();
            
            query.Consulta("delete from Sucursal where Id_Sucursal=" + txtID.Text);
            
            txtID.Text = "";
        }
    }
}