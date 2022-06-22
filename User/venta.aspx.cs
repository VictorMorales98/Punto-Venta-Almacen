using Proyect_2._0._1.Connection;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyect_2._0._1.User
{
    public partial class venta : System.Web.UI.Page
    {
        connection c = new connection();
        private SqlDataReader r;
        private SqlDataReader h;
        ventar v = new ventar();
        public Double f = 0;
        public Double iva = 0;
        public Double i = 0.16;
        public Double to = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (c.User == null && c.Pas == null)
            {
                Response.Redirect("401.aspx");

            }
            else
            {
                if (v.ID == null)
                {
                    Label1.Text = c.User;
                    usu.Text = c.Nom;
                    ter.Enabled = false;
                    this.c = new connection();
                    this.r = this.c.getCli();
                    this.h = this.c.getVen("0");
                }
                else
                {
                    nueva.Enabled = false;
                    tick.Text = v.ID;
                    Label1.Text = c.User;
                    usu.Text = c.Nom;
                    ter.Enabled = true;
                    this.c = new connection();
                    this.r = this.c.getCli();
                    this.h = this.c.getVen(v.ID);
                }
            }
        }

        protected void logout(object sender, EventArgs e)
        {
            c.User = null;
            c.Pas = null;
            Session.Clear();
            Response.Redirect("../Login/login.aspx");
        }

        public void codRand(object sender, EventArgs e)
        {
            Class1 cn = new Class1();
            Random r = new Random();
            int n;
            n = r.Next(9999999, 999999999);
            String t = "" + n;
            cn.ID = t;
            tick.Text = cn.ID;
            nueva.Enabled = false;
            v.ID = t;
            ter.Enabled = true;
        }

        public void RegVen(object sender, EventArgs e)
        {
            String t = pro.SelectedValue;//product
            String a = TextBox4.Text;//cantidad
            String cv = tick.Text;//vent
            String rf = c.RFC;//rfc usuario
            String s = cli.SelectedValue.ToString();

            c.venta(cv, t, a, s, rf);
            Response.Redirect("venta.aspx");
        }

        public SqlDataReader getFilas()
        {
            return this.r;
        }

        public SqlDataReader getVen()
        {
            return this.h;
        }

        public void terminar(object sender, EventArgs e)
        {
            Response.Redirect("../Reports/ticket.aspx");

        }

        public void reiniciar(object sender, EventArgs e)
        {
            nueva.Enabled = true;
            ter.Enabled = false;
            v.ID = null;
            tick.Text = null;
            Response.Redirect("venta.aspx");
        }
    }

}