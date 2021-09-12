using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


namespace Tp5Prog3
{
    public partial class ListarSucursal : System.Web.UI.Page
    {
        public void consultaTabla(string consulta)
        {
            string ruta = "Data Source=LocalHost\\SQLEXPRESS;Initial Catalog=BDSucursales;Integrated Security=True";

            DataSet ds = new DataSet();
            SqlConnection cn = new SqlConnection(ruta);
            cn.Open();
            SqlDataAdapter adaptador = new SqlDataAdapter(consulta, cn);
            adaptador.Fill(ds, "Sucursal");
            GvSucursales.DataSource = ds.Tables["Sucursal"];
            GvSucursales.DataBind();
            cn.Close();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            consultaTabla("select Id_Sucursal,NombreSucursal,DescripcionSucursal,id_ProvinciaSucursal,DireccionSucursal from Sucursal  ");
            

        }

        protected void btnFiltrar_Click(object sender, EventArgs e)
        {
           
            string id = txtIdSucursal.Text;
            consultaTabla("select Id_Sucursal,NombreSucursal,DescripcionSucursal,id_ProvinciaSucursal,DireccionSucursal from Sucursal where Id_Sucursal= "+id);
            txtIdSucursal.Text = "";
        }

        protected void btnMostrar_Click(object sender, EventArgs e)
        {
            consultaTabla("select Id_Sucursal,NombreSucursal,DescripcionSucursal,id_ProvinciaSucursal,DireccionSucursal from Sucursal  ");
            txtIdSucursal.Text = "";
        }
    }
}