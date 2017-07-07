using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data.Entity;
using NicolasRiffoPrueba.Modelo.entidades;

namespace NicolasRiffoPrueba.Modelo
{
    public class DataModel : DbContext
    {

        public List<Encuesta> listadoEncuesta()
        {
            List<Encuesta> listaAux = new List<Encuesta>();
            try
            {
                using (var bd = new DataModel())
                {
                    listaAux = bd.Database.SqlQuery<Encuesta>("select * from [dbo].[fn_tabla_encuesta] ()").ToList<Encuesta>();
                }
                return listaAux;
            }
            catch (Exception)
            {

                return listaAux;
            }
        }
        public bool addProducto( string Pregunta, string Respuesta)
        {
            try
            {
                int rowcount = 0;
                using (var bd = new DataModel())
                {
                    rowcount = bd.Database.ExecuteSqlCommand("exec [dbo].[sp_insertarEncuesta]@Pregunta={1},@Respuesta={2}", Pregunta, Respuesta);
                    return rowcount > 0;
                }
            }
            catch (Exception)
            {

                return false;
            }
        }
    }
       
}