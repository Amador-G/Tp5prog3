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
        const string bdSucursales = "Data Source=LocalHost\\SQLEXPRESS;Initial Catalog=BDSucursales;Integrated Security=True";

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

      //  public int queryHecha(string Consulta)
      //  {
           // string bdSucursales = "Data Source=LocalHost\\SQLEXPRESS;Initial Catalog=BDSucursales;Integrated Security=True";
          //  SqlConnection cn = new SqlConnection(bdSucursales);
          //  cn.Open();
          //  SqlCommand cmd = new SqlCommand(Consulta, cn);
           // int filasAfectadas = cn.ExecuteNonQuery();
           // return filasAfectadas;
       // }
    }
}