using System;
using System.Collections.Generic;
using System.Data;
using System.Drawing;
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

        public DataTable filtrarSucursal(string idSucursal)
        {
            //filtramos por idSucursal como se pide en el enunciado
            string consultaSQL = "SELECT * FROM Sucursal WHERE Id_Sucursal = " + idSucursal;
            string nombreTabla = "Sucursal";
            return acceso.obtenerTablas(consultaSQL, nombreTabla);
        }

    }
}