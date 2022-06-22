using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using Proyect_2._0._1.Connection;
using CrystalDecisions.CrystalReports.Engine;
using CrystalDecisions.Shared;
using System.Web.UI.WebControls.WebParts;

namespace Proyect_2._0._1.Reports
{
    public partial class ticket : System.Web.UI.Page
    {
        connection c = new connection();
        ventar v = new ventar();

        protected void Page_Load(object sender, EventArgs e)
        {
            String sql = "select * from TICKET where VEN_CVE_UN = "+ v.ID;
            SqlDataAdapter adp = new SqlDataAdapter(sql,c.conec());
            DataSet ds = new DataSet();
            adp.Fill(ds);

            ReportDocument rpt = new ReportDocument();
            rpt.Load(Server.MapPath("TicketReport.rpt"));
            rpt.SetDataSource(ds.Tables["Table"]);

            CrystalReportViewer1.ReportSource = rpt;

            rpt.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, false, "Ticket Compra");

            
        }
    }
}