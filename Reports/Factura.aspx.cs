using CrystalDecisions.CrystalReports.Engine;
using CrystalDecisions.Shared;
using Proyect_2._0._1.Connection;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyect_2._0._1.Reports
{
    public partial class Factura : System.Web.UI.Page
    {
        connection c = new connection();

        protected void Page_Load(object sender, EventArgs e)
        {
            String r = Request.QueryString["id"];
            String sql = "select * from TICKET where VEN_CVE_UN = " + r;
            SqlDataAdapter adp = new SqlDataAdapter(sql, c.conec());
            DataSet ds = new DataSet();
            adp.Fill(ds);

            ReportDocument rpt = new ReportDocument();
            rpt.Load(Server.MapPath("FacturaReport.rpt"));
            rpt.SetDataSource(ds.Tables["Table"]);

            CrystalReportViewer1.ReportSource = rpt;

            rpt.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, false, "Factura");

        }
    }
}