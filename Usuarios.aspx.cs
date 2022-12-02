using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Windows.Forms;
using System.Data;



namespace saldanacars2
{
    public partial class Usuarios : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["Usuario"] == null)
            {
                Response.Redirect("~/login.aspx");
            }

        }



        protected void Button1_Click(object sender, EventArgs e)
        {
            
            SqlConnection conexion = new SqlConnection("server=DESKTOP-4FS1H55 ; database=DBSaldañaCar ; integrated security = true");
            conexion.Open();
            string Cla = Clave.Text;
            string Nombre = Nombres.Text;
            string Apell = Apellidos.Text;
            string Ro = Rol.Text;
            string Contras = Contrasena.Text;


            string sel = string.Format(" select id,Clave, Nombres, Apellidos, Rol,Contrasena FROM[dbo].[Usuario]");
            SqlCommand comando = new SqlCommand(sel, conexion);
            var resultado = comando.ExecuteScalar();



            if (resultado != null)
            {
                MessageBox.Show("La clave de usuario ya existe");
            }
            else
            {

                string cadena = string.Format("'{0}','{1}','{2}','{3}','{4}'", Cla, Nombre, Apell, Ro, Contras);
                string cadena1 = "insert into Usuario(Clave,Nombres,Apellidos,Rol,Contrasena) values (" + cadena + ")";
                comando = new SqlCommand(cadena1, conexion);
                comando.ExecuteNonQuery();
                MessageBox.Show("Los datos se guardaron correctamente");
                Clave.Text = "";
                Nombres.Text = "";
                Apellidos.Text = "";
                Rol.Text = "";
                Contrasena.Text = "";


            }




            conexion.Close();
        }
    }
}
    
