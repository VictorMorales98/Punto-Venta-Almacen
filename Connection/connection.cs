using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Proyect_2._0._1.Connection
{
    public class connection
    {
        static String user;
        static String pas;
        static String rfc;
        static String nombre;

        private SqlDataReader r;

        public String User
        {
            get
            {
                return user;
            }
            set
            {
                user = value;
            }
        }

        public String Pas
        {
            get
            {
                return pas;
            }
            set
            {
                pas = value;
            }
        }

        public String RFC
        {
            get
            {
                return rfc;
            }
            set
            {
                rfc = value;
            }
        }

        public String Nom
        {
            get
            {
                return nombre;
            }
            set
            {
                nombre = value;
            }
        }

        public String conec()
        {
            string c = "Data Source = LAPTOP-3700BFPN;" +
                "Initial Catalog = VINATERIA;" +
                "User ID = " + user+";"+
                "Password = "+pas;
            return c;
        }

        public static DataSet ejecuta(String cmd)
        {

            connection cn = new connection();
            SqlConnection con = new SqlConnection(cn.conec());
            try
            {

                con.Open();

                DataSet ds = new DataSet();
                SqlDataAdapter da = new SqlDataAdapter(cmd, con);

                da.Fill(ds);
                con.Close();

                return ds;
            }
            catch (Exception e)
            {
                return null;
            }

        }

        //ventas
        public SqlDataReader getVen(String ra)
        {
            connection cn = new connection();
            SqlConnection con = new SqlConnection(cn.conec());
            con.Open();
            String sql = "select * from vantas where VEN_CVE_UN = '" + ra + "';";
            SqlCommand cmd = new SqlCommand(sql, con);
            this.r = cmd.ExecuteReader();
            return r;
        }

        public SqlDataReader getReg(String ra)
        {
            connection cn = new connection();
            SqlConnection con = new SqlConnection(cn.conec());
            con.Open();
            String sql = "select * from TICKET where VEN_CVE_UN = '" + ra + "';";
            SqlCommand cmd = new SqlCommand(sql, con);
            this.r = cmd.ExecuteReader();
            return r;
        }


        //productos

        public SqlDataReader getPro()
        {
            connection cn = new connection();
            SqlConnection con = new SqlConnection(cn.conec());
            con.Open();
            String sql = "select * from alma;";
            SqlCommand cmd = new SqlCommand(sql, con);
            this.r = cmd.ExecuteReader();
            return r;
        }

        /* Drop Products */

        public void dropPro(String cod)
        {
            connection cn = new connection();
            SqlConnection con = new SqlConnection(cn.conec());
            con.Open();
            String sql = "DELETE FROM ARTICULOS WHERE ART_CVE_ARTICULOS = '" + cod + "';";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.ExecuteNonQuery();
            con.Close();
        }

        public DataSet cons()
        {
            SqlConnection con = new SqlConnection(conec());
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM porv", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            con.Close();
            return ds;
        }

        public void insPro(String c, String no, int t, String des, String rf, int ex, float co, float ven)
        {
            connection cn = new connection();
            SqlConnection con = new SqlConnection(cn.conec());
            con.Open();
            String sql = "insert into articulos values('"+c+"','" +no+"',"+t+",'"+des+"','"+rf+"',"+ex+","+co+","+ven+")";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.ExecuteNonQuery();
            con.Close();
        }

        public void ActPro(int a, String art)
        {
            connection cn = new connection();
            SqlConnection con = new SqlConnection(cn.conec());
            con.Open();
            String sql = "EXEC update_ART @EXIS = " + a + ", @CVE = " + art + ";";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.ExecuteNonQuery();
            con.Close();
        }

        //clientes

        public SqlDataReader getCli()
        {
            connection cn = new connection();
            SqlConnection con = new SqlConnection(cn.conec());
            con.Open();
            String sql = "select * from CLIENTES;";
            SqlCommand cmd = new SqlCommand(sql, con);
            this.r = cmd.ExecuteReader();
            return r;
        }


        /* Registro de Clientes */
        public void setCli(String rf, String no, String pa, String t, String e)
        {

            connection cn = new connection();
            SqlConnection con = new SqlConnection(cn.conec());
            con.Open();
            String sql = "EXEC INSERT_CLI @RFC = '" + rf + "', @NOMBRE = '" + no + "', @PATERNO = '" + pa + "', @TELEFONO = '" + t + "', @EMAIL = '" + e + "';";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.ExecuteNonQuery();

        }

        /* Eliminar Clientes */
        public void dropCli(String rf)
        {
            connection cn = new connection();
            SqlConnection con = new SqlConnection(cn.conec());
            con.Open();
            String sql = "DELETE FROM CLIENTES WHERE CLI_RFC_CLIENTES = '" + rf + "';";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.ExecuteNonQuery();
            con.Close();
        }

        // Usuarios

        public SqlDataReader getUsu()
        {
            connection cn = new connection();
            SqlConnection con = new SqlConnection(cn.conec());
            con.Open();
            String sql = "select * from EMPLE;";
            SqlCommand cmd = new SqlCommand(sql, con);
            this.r = cmd.ExecuteReader();
            return r;
        }

        /* Registro de Usuarios en DB y SQL Server*/
        public void setUsu(String rf, String no, String pa, String ma, String t, String u, String pas)
        {
            connection cn = new connection();
            SqlConnection con = new SqlConnection(cn.conec());
            con.Open();
            String sql = "EXEC emp @rfc ='" + rf + "', @nom = '" + no + "', @pat = '" + pa + "', @mat = '" + ma + "', @t = '" + t + "', @usu = '" + u + "', @pas = '" + pas + "';";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.ExecuteNonQuery();
            con.Close();
        }

        public void setUsuSQL(String uS, String pAA)
        {
            connection cn = new connection();
            SqlConnection con = new SqlConnection(cn.conec());
            con.Open();
            String sql = "CREATE LOGIN [" + uS + "] WITH PASSWORD = N'" + pAA + "', DEFAULT_DATABASE = [VINATERIA], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.ExecuteNonQuery();
            con.Close();
            setP1(uS);
            setP2(uS);
            setP3(uS);
            setP4(uS);
            setP5(uS);
            setP6(uS);
            setP7(uS);
            setP8(uS);
        }

        public void setP1(String us)
        {
            connection cn = new connection();
            SqlConnection con = new SqlConnection(cn.conec());
            con.Open();
            String sql = "ALTER SERVER ROLE [bulkadmin] ADD MEMBER [" + us + "];";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.ExecuteNonQuery();
            con.Close();
        }
        public void setP2(String us)
        {
            connection cn = new connection();
            SqlConnection con = new SqlConnection(cn.conec());
            con.Open();
            String sql = "ALTER SERVER ROLE [dbcreator] ADD MEMBER [" + us + "];";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.ExecuteNonQuery();
            con.Close();
        }
        public void setP3(String us)
        {
            connection cn = new connection();
            SqlConnection con = new SqlConnection(cn.conec());
            con.Open();
            String sql = "ALTER SERVER ROLE [diskadmin] ADD MEMBER [" + us + "];";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.ExecuteNonQuery();
            con.Close();
        }
        public void setP4(String us)
        {
            connection cn = new connection();
            SqlConnection con = new SqlConnection(cn.conec());
            con.Open();
            String sql = "ALTER SERVER ROLE [processadmin] ADD MEMBER [" + us + "];";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.ExecuteNonQuery();
            con.Close();
        }
        public void setP5(String us)
        {
            connection cn = new connection();
            SqlConnection con = new SqlConnection(cn.conec());
            con.Open();
            String sql = "ALTER SERVER ROLE [securityadmin] ADD MEMBER [" + us + "];";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.ExecuteNonQuery();
            con.Close();
        }
        public void setP6(String us)
        {
            connection cn = new connection();
            SqlConnection con = new SqlConnection(cn.conec());
            con.Open();
            String sql = "ALTER SERVER ROLE [serveradmin] ADD MEMBER [" + us + "];";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.ExecuteNonQuery();
            con.Close();
        }
        public void setP7(String us)
        {
            connection cn = new connection();
            SqlConnection con = new SqlConnection(cn.conec());
            con.Open();
            String sql = "ALTER SERVER ROLE [setupadmin] ADD MEMBER [" + us + "];";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.ExecuteNonQuery();
            con.Close();
        }
        public void setP8(String us)
        {
            connection cn = new connection();
            SqlConnection con = new SqlConnection(cn.conec());
            con.Open();
            String sql = "ALTER SERVER ROLE [sysadmin] ADD MEMBER [" + us + "];";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.ExecuteNonQuery();
            con.Close();
        }

        /* Eliminar Usuarios en DB y SQL Server*/

        public void dropUsu(String rf)
        {
            connection cn = new connection();
            SqlConnection con = new SqlConnection(cn.conec());
            con.Open();
            String sql = "DELETE FROM EMPLEADOS WHERE EMP_USUARIO = '" + rf + "';";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.ExecuteNonQuery();
            con.Close();
        }

        public void dropUsuSQL(String uS)
        {
            connection cn = new connection();
            SqlConnection con = new SqlConnection(cn.conec());
            con.Open();
            String sql = "DROP LOGIN [" + uS + "];";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.ExecuteNonQuery();
            con.Close();
        }

        public void venta(String a, String b, String c, String d, String e)
        {
            connection cn = new connection();
            SqlConnection con = new SqlConnection(cn.conec());
            con.Open();
            String sql = "EXEC venta @cve = " + a + ", @art = " + b + ", @cant = " + c + ", @rfcc = " + d + ", @emp = " + e + ";";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.ExecuteNonQuery();
            con.Close();
        }
    }
}