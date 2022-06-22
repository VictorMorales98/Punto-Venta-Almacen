using Proyect_2._0._1.Connection;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyect_2._0._1.Admin
{
    public partial class clientes : System.Web.UI.Page
    {

        connection c = new connection();
        private SqlDataReader r;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (c.User == null && c.Pas == null)
            {
                Response.Redirect("401.aspx");

            }
            else
            {
                Label1.Text = c.User;
                this.c = new connection();
                this.r = this.c.getCli();
            }
        }

        protected void logout(object sender, EventArgs e)
        {
            c.User = null;
            c.Pas = null;
            Session.Clear();
            Response.Redirect("../Login/login.aspx");
        }

        public SqlDataReader getFilas()
        {
            return this.r;
        }

        public void setClie(object sender, EventArgs e)
        {
            String r = RFC.Text;
            String n = Nombre.Text;
            String p = Paterno.Text;
            String t = Telefono.Text;
            String co = Correo.Text;

            c.setCli(r, n, p, t, co);
            Response.Redirect("clientes.aspx");
        }
    }

}