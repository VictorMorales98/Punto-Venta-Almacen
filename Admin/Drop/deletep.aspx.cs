using Proyect_2._0._1.Connection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyect_2._0._1.Admin.Drop
{
    public partial class deletep : System.Web.UI.Page
    {
        private connection c;

        protected void Page_Load(object sender, EventArgs e)
        {
            this.c = new connection();
            String r = Request.QueryString["cod"];
            c.ActPro(0, r);
            Response.Redirect("../almacen.aspx");
        }
    }
}