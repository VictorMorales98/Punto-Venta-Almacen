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
    public partial class usuarios : System.Web.UI.Page
    {
        connection c = new connection();
        private SqlDataReader r;
        String o;

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
                this.r = this.c.getUsu();
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

        public void Reg(object sender, EventArgs e)
        {
            String r = RFC.Text;
            String n = Nombre.Text;
            String p = Paterno.Text;
            String m = Materno.Text;
            String u = Usuario.Text;
            String pp = Contrasena.Text;
            String cp = Tipo.SelectedValue.ToString();

            if (cp == "admin")
            {
                o = "1";
            }
            else
            {
                if (cp == "usuario")
                    o = "2";
            }

            if (Contrasena.Text == CContrasena.Text)
            {
                c.setUsu(r, n, p, m, o, u, pp);
                c.setUsuSQL(u, pp);
                Response.Redirect("usuarios.aspx");
            }

        }

        public void Drop(object sender, EventArgs e)
        {

        }

    }

}