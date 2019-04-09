using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;

namespace Final_Programacion.Models
{
    public class EmpleadoContext: DbContext
    {
        public DbSet<Empleados> Empleados { get; set; }
    }
}