using Proyect_2._0._1.Connection;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyect_2._0._1.Login
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                String usuario;
                String contrasena;
                connection c = new connection();
                Class1 co = new Class1();



                if (user.Text != "")
                {
                    if (pass.Text != "")
                    {
                        usuario = user.Text;
                        contrasena = pass.Text;
                        c.User = usuario;
                        c.Pas = contrasena;

                        String cmd = "EXEC usuarios @usu = " + usuario + ", @pass = " + contrasena;

                        DataSet ds = connection.ejecuta(cmd);

                        String u = ds.Tables[0].Rows[0][0].ToString().Trim();
                        String p = ds.Tables[0].Rows[0][1].ToString().Trim();
                        String t = ds.Tables[0].Rows[0][2].ToString().Trim();
                        String f = ds.Tables[0].Rows[0][3].ToString().Trim();
                        String n = ds.Tables[0].Rows[0][4].ToString().Trim();
                        String pa = ds.Tables[0].Rows[0][5].ToString().Trim();
                        String m = ds.Tables[0].Rows[0][6].ToString().Trim();



                        co.ID = t;
                        c.RFC = f;
                        c.Nom = n + " " + pa + " " + m;

                        if (u == usuario && p == contrasena)
                        {
                            if (co.ID == "1")
                            {
                                Response.Redirect("../Admin/principal.aspx");

                            }
                            else
                            {
                                Response.Redirect("../User/principal.aspx");
                            }

                        }
                        else
                        {
                            Label1.Text = "Datos Incorrectos";
                        }

                    }
                    else
                    {
                        Label1.Text = "Ingrese Contraseña Valida";
                    }
                }
                else
                {
                    Label1.Text = "Ingrese Usuario Valido";
                }

            }
            catch (Exception ex)
            {

            }
        }
    }
}