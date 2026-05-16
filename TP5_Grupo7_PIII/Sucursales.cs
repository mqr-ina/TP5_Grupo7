using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;

namespace TP5_Grupo7_PIII
{
    public class Sucursales
    {
        private string consultaBaseSucursales = "SELECT Id_Sucursal AS ID, " +
                                                "NombreSucursal AS NOMBRE, " +
                                                "DescripcionSucursal AS DESCRIPCION, " +
                                                "DescripcionProvincia AS PROVINCIA, " +
                                                "DireccionSucursal AS DIRECCION " +
                                                "FROM Sucursal " +
                                                "INNER JOIN Provincia " +
                                                "ON Id_Provincia = Id_ProvinciaSucursal";
        AccederDatos acceso = new AccederDatos();
        
        public DataTable obtenerProvincias()
        {
            string consultaSQL = "SELECT * FROM Provincia";
            string nombreTabla = "Provincias";
            return acceso.obtenerTablas(consultaSQL, nombreTabla);
        }

        public DataTable obtenerSucursales()
        {
           //string consultaSQL = "SELECT Id_Sucursal AS ID, NombreSucursal AS NOMBRE, DescripcionSucursal AS DESCRIPCION,
           //DescripcionProvincia AS PROVINCIA, DireccionSucursal AS DIRECCION
           //FROM Sucursal INNER JOIN Provincia ON Id_Provincia = Id_ProvinciaSucursal";
            string nombreTabla = "Sucursales";
            return acceso.obtenerTablas(consultaBaseSucursales, nombreTabla);
        }

        public DataTable filtrarSucursal(string idSucursal)
        {
            //filtramos por idSucursal como se pide en el enunciado
            string consultaSQL = consultaBaseSucursales + " WHERE Id_Sucursal = " + idSucursal;
            string nombreTabla = "Sucursal";
            return acceso.obtenerTablas(consultaSQL, nombreTabla);
        } 

        public DataTable filtrarSucursalProv(int idSucursalProv) {
         
            string consultaSQL = consultaBaseSucursales + " WHERE Id_ProvinciaSucursal = " + idSucursalProv;
            string nombreTabla = "Sucursal";
            return acceso.obtenerTablas(consultaSQL, nombreTabla);

        }

        public int obtenerIdProvincia(string item)
        {          
            int idProvincia;
            string consultaSQL = "SELECT Id_Provincia FROM Provincia WHERE DescripcionProvincia = '" + item + "'";
            idProvincia = acceso.obtenerIdProvincia(consultaSQL);
            return idProvincia;                       
        }

        //DataTable tabla = acceso.obtenerTablas(consultaSQL, "Provincia");
        //if (tabla.Rows.Count > 0)
        //    idProvincia = Convert.ToInt32(tabla.Rows[0]["Id_Provincia"]);

        public int eliminarSucursal(string idSucursal)
        {
            string consultaSQL = "DELETE FROM Sucursal WHERE Id_Sucursal = " + idSucursal;
            return acceso.ejecutarConsulta(consultaSQL);
        }

        public bool existeSucursal(string nombre)
        {
            string consultaSQL = "SELECT * FROM Sucursal WHERE NombreSucursal = '" + nombre + "'";
            DataTable tabla = acceso.obtenerTablas(consultaSQL, "Sucursal");
            return tabla.Rows.Count > 0;
        }

        public string obtenerNombreSucursal(int idSucursal) //Clase "Sucursales" (sería como un manager)
        {
            string consultaSQL = "SELECT NombreSucursal FROM Sucursal WHERE Id_Sucursal = " + idSucursal+ "";
            DataTable tabla = acceso.obtenerTablas(consultaSQL, "Sucursal");
            if(tabla.Rows.Count > 0) //si la tabla "trae" registros...
            {
                return tabla.Rows[0]["NombreSucursal"].ToString(); //Devuelve el nombre de la sucursal
            }
            else
            {
                return null; //Si no existe una sucursal con ese ID, no devuelve nada.
            }
        }

        public int agregarSucursal(string nombreSucursal, string descripcionSucursal, int IdProvinciaSucursal, string direccionSucursal)
        {
            string consultaSql = "INSERT INTO sucursal (NombreSucursal, DescripcionSucursal, Id_ProvinciaSucursal, DireccionSucursal) SELECT" + "' " + nombreSucursal + "'" + " ," + "'" + descripcionSucursal + "'" + ","  + IdProvinciaSucursal + "," + "'" + direccionSucursal + "'";   
            int filasAfectadas = acceso.ejecutarConsulta(consultaSql);
            return filasAfectadas;
        }
    }
}