using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;

namespace Proyect_2._0._1.Index
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            try
            {
                String f = "vmsuport.as@gmail.com";
                String c = "lagrimasygozos";
                String t = "vm70812@gmail.com";
                MailMessage msg = new MailMessage();
                msg.From = new MailAddress(f);
                msg.To.Add(t);
                msg.Subject = "Comentarios";
                msg.Body = "Nombre: " + name.Text
                         + "\n Correo: " + email.Text
                         + "\n Telefono: " + number.Text
                         + "\n Mensaje: \n " + message.Text;
                SmtpClient sc = new SmtpClient("smtp.gmail.com");
                sc.Port = 25;
                sc.Credentials = new NetworkCredential(f, c);
                sc.EnableSsl = true;
                sc.Send(msg);
                mens.Text = "Informacion enviada";
                name.Text = null;
                email.Text = null;
                number.Text = null;
                message.Text = null;
            } catch (Exception h)
            {
                mens.Text = "Error";
            }
        }
    }
}