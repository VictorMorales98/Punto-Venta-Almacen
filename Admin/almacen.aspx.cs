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
    public partial class almacen : System.Web.UI.Page
    {
        private connection c;
        private connection cc = new connection();
        private SqlDataReader r;
        Class1 cn = new Class1();

        protected void Page_Load(object sender, EventArgs e)
        {

            if (cc.User == null && cc.Pas == null)
            {
                Response.Redirect("401.aspx");

            }
            else
            {
                Label1.Text = cc.User;
                this.c = new connection();
                this.r = this.c.getPro();
            }
        }

        public SqlDataReader getFilas()
        {
            return this.r;
        }

        protected void logout(object sender, EventArgs e)
        {
            c.User = null;
            c.Pas = null;
            Session.Clear();
            Response.Redirect("../Login/login.aspx");
        }


        protected void RegPro(object sender, EventArgs e)
        {
            String cve = cod.Text;
            String nom = Nombre.Text;
            String tip = DropDownList4.SelectedValue;
            String des = Desc.Text;
            String mar = DropDownList3.SelectedValue;
            int exs = int.Parse(Exis.Text);
            float comp = float.Parse(com.Text);
            float vent = float.Parse(ven.Text);
            int t = int.Parse(tip);

            cc.insPro(cve, nom, t, des, mar, exs, comp, vent);
            Response.Redirect("almacen.aspx");
        }


        public void Selection(Object sender, EventArgs e)
        {
            String t = pro.SelectedValue;
            int a = int.Parse(TextBox4.Text);

            c.ActPro(a, t);
            Response.Redirect("almacen.aspx");
        }
    }
}
