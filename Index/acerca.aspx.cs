using Proyect_2._0._1.Connection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyect_2._0._1.Index
{
    public partial class acerca : System.Web.UI.Page
    {
        connection c = new connection();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (c.User == null && c.Pas == null)
            {
                Response.Redirect("../errores/401.aspx");

            }
            else
            {
                Label1.Text = c.User;
            }
        }

        protected void logout(object sender, EventArgs e)
        {
            c.User = null;
            c.Pas = null;
            Session.Clear();
            Response.Redirect("../login/login.aspx");
        }
    }
}