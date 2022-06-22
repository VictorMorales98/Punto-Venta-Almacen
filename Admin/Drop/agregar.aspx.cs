using Proyect_2._0._1.Connection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyect_2._0._1.Admin.Drop
{
    public partial class agregar : System.Web.UI.Page
    {
        private connection c;
        private ventar v;

        protected void Page_Load(object sender, EventArgs e)
        {
            this.c = new connection();
            this.v = new ventar();
            String r = Request.QueryString["rfc"];
            v.CLIENTE = r;
            Response.Redirect("/ventas.aspx");
        }
    }
}