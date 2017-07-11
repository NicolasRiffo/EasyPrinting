using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace NicolasRiffoPrueba.Modelo.entidades
{
    public class Boleta
    {
        public int Id { get; set; }
        public int Hojas { get; set; }
        public int Descuento { get; set; }
        public string Costo { get; set; }
    }
}