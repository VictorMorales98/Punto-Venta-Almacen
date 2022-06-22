using Proyect_2._0._1.Connection;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyect_2._0._1.Billing
{
    public partial class registros : System.Web.UI.Page
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
                this.r = c.getReg(null);
            }
        }

        public void Search(object sender, EventArgs e)
        {
            String t = tick.Text.ToString();
            this.r = c.getReg(t);
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
            Response.Redirect("../Login/loginb.aspx");
        }

        protected void fac(object sender, EventArgs e)
        {
            Response.Redirect("../Reports/Factura.aspx?id=" + tick.Text.ToString());
        }
    }
}