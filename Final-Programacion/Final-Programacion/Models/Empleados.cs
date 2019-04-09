using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Final_Programacion.Models
{
    public class Empleados
    {
        public int Id { get; set; }
        public string CodigoEmpleado { get; set; }
        public string Nombre { get; set; }
        public string Apellido { get; set; }
        public string Telefono { get; set; }
        public string Departamento { get; set; }
        public string Cargo { get; set; }

        [DataType(DataType.Date)]
        [Display(Name = "Fecha de Ingreso")]
        public System.DateTime FechaIngreso { get; set; }
        public double Salario { get; set; }
        public string Estado { get; set; }
    }
}