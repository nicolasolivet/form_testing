using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace domain
{
    public class AutoNegocio
    {
        public List<Auto> Listar()
        {
            List<Auto> lista = new List<Auto>();
            //Auto auto1 = new Auto();
            lista.Add(new Auto());
            lista.Add(new Auto());

            lista[0].Id = 1;
            lista[0].Modelo = "Golf";
            lista[0].Descripcion = "Alto auto";
            lista[0].Color = "Rojo";
            lista[0].Fecha = DateTime.Now;
            lista[0].Nuevo = false;
            lista[0].Nacional = true;

            lista[1].Id = 2;
            lista[1].Modelo = "Mustang";
            lista[1].Descripcion = "Tremendo auto mal";
            lista[1].Color = "Amarillo";
            lista[1].Fecha = DateTime.Now;
            lista[1].Nuevo = true;
            lista[1].Nacional = false;

            return lista;
        }
    }
}
