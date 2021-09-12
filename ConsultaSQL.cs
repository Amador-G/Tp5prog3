using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace Tp5Prog3
{
    public class ConsultaSQL
    {
        
        public DataSet Consulta (string Consulta)
        {
            string bdSucursales = "Data Source=LocalHost\\SQLEXPRESS;Initial Catalog=BDSucursales;Integrated Security=True";
            SqlConnection cn = new SqlConnection(bdSucursales);
            cn.Open();
            SqlCommand cmd = new SqlCommand(Consulta, cn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            cn.Close();
            return ds;
        }
        public int  ConsultaFilas (string Consulta)//Devuelve cuantas filas se modificaron(CONSULTAR DE TIPO eliminar,agregar,modificar)
        {
            string bdSucursales = "Data Source=LocalHost\\SQLEXPRESS;Initial Catalog=BDSucursales;Integrated Security=True";
            SqlConnection cn = new SqlConnection(bdSucursales);
            cn.Open();
            SqlCommand cmd = new SqlCommand(Consulta, cn);
            int filasAfectadas = cmd.ExecuteNonQuery();
            return filasAfectadas;
        }
    }
}
