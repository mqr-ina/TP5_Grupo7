using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace TP5_Grupo7_PIII
{
    public class AccederDatos
    {
        private static string rutaConexion = @"Data Source=.\SQLEXPRESS;Initial Catalog = BDSucursales; Integrated Security = True; Encrypt=False;TrustServerCertificate=True";

        public DataTable obtenerTablas(string consulaSQL, string nombretabla)
        {
            SqlConnection conex = new SqlConnection(rutaConexion);
            conex.Open();

            SqlDataAdapter adap = new SqlDataAdapter(consulaSQL, conex);
            DataSet ds = new DataSet();
            adap.Fill(ds, "nombretabla"); // llenamos el dataset con los datos obtenidos de la consulta SQL
            return ds.Tables["nombretabla"]; // devolvemos la tabla del dataset que contiene los datos obtenidos de la consulta SQL
        }


    }

}