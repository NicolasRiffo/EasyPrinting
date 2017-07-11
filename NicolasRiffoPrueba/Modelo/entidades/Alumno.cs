using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace NicolasRiffoPrueba.Modelo.entidades
{
    public class Alumno
    {
        public string Rut { get; set; }
        public string Nombre { get; set; }
        public string Contraseña { get; set; }
        public string Email { get; set; }
        public int Saldo { get; set; }
        public int Cupo { get; set; }
        public string Tipo { get; set; }
    }
}