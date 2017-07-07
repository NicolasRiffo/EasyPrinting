using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace NicolasRiffoPrueba.Modelo.entidades
{
    public class Encuesta
    {
        public int Id { get; set; }
        public string Pregunta { get; set; }
        public string Respuesta { get; set; }
    }
}