using Proyect_2._0._1.Connection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyect_2._0._1.Admin.Drop
{
    public partial class delete : System.Web.UI.Page
    {
        private connection c;

        protected void Page_Load(object sender, EventArgs e)
        {

            this.c = new connection();
            String r = Request.QueryString["rfc"];
            if (r == "sa" && r == c.User)
            {
                Response.Redirect("../usuarios.aspx");
            }
            else
            {
                this.c.dropUsu(r);
                this.c.dropUsuSQL(r);
                Response.Redirect("../usuarios.aspx");
            }
        }
    }
}