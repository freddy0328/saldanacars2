using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace saldanacars2
{
    public partial class Clientes1 : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }



        protected void Button1_Click1(object sender, EventArgs e)
        {
            SqlConnection conexion = new SqlConnection("server=DESKTOP-4FS1H55 ; database=DBSaldañaCar ; integrated security = true");
            conexion.Open();

        



            string Nombre = Nombredelcliente.Text;
            string Direcci = Direccion.Text;
            decimal Telefo = decimal.Parse(Telefono.Text);
            string Ema = Email.Text;
            string Contrase = Contrasena.Text;

            string sel = string.Format(" select * FROM[dbo].[Clientes] where Nombredelcliente = '{0}'", Nombredelcliente.Text);
            SqlCommand comando = new SqlCommand(sel, conexion);
            var resultado = comando.ExecuteScalar();

            if (resultado != null)
            {
                MessageBox.Show("La clave de usuario ya existe");
            }
            else
            {

                string cadena = string.Format("'{0}','{1}',{2},'{3}','{4}'", Nombre,Direcci, Telefo, Ema, Contrase);
            string cadena1 = "insert into Clientes(Nombredelcliente,Direccion,Telefono,Correoelectronico,Contrasena) values (" + cadena + ")";
            comando = new SqlCommand(cadena1, conexion);
            comando.ExecuteNonQuery();
            MessageBox.Show("Los datos se guardaron correctamente");
            Nombredelcliente.Text = "";
            Direccion.Text = "";
            Telefono.Text = "";
            Email.Text = "";
            Contrasena.Text = "";

            }




            


           
            conexion.Close();
        }
    }
}

