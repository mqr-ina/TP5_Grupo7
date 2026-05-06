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

    }
}