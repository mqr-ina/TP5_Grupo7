using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace TP5_Grupo7_PIII
{
    public class Sucursales
    {
        AccederDatos acceso = new AccederDatos();

        public DataTable obtenerProvincias()
        {
            string consultaSQL = "SELECT * FROM Provincia";
            string nombreTabla = "Provincias";
            return acceso.obtenerTablas(consultaSQL, nombreTabla);
        }

        public DataTable obtenerSucursales()
        {
            string consultaSQL = "SELECT Id_Sucursal AS ID, NombreSucursal AS NOMBRE, DescripcionSucursal AS DESCRIPCION, DescripcionProvincia AS PROVINCIA, DireccionSucursal AS DIRECCION FROM Sucursal INNER JOIN Provincia ON Id_Provincia = Id_ProvinciaSucursal";
            string nombreTabla = "Sucursales";
            return acceso.obtenerTablas(consultaSQL, nombreTabla);
        }
    }
}