using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Proyect_2._0._1.Connection
{
    public class ventar
    {
        static String id;
        static String cliente;

        public String ID
        {
            get
            {
                return id;
            }
            set
            {
                id = value;
            }
        }

        public String CLIENTE
        {
            get
            {
                return cliente;
            }
            set
            {
                cliente = value;
            }
        }
    }
}