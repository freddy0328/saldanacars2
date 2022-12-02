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
    public partial class Empleados1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            SqlConnection conexion = new SqlConnection("server=DESKTOP-4FS1H55 ; database=DBSaldañaCar ; integrated security = true");
            conexion.Open();
            string Nombredelem = Nombredelempleado.Text;
            string templeado = tipodeempleado.Text;
            string Direc = Direccion.Text;
            decimal Telefo = decimal.Parse(Telefono.Text);
            String Correoelc = Correoelectronico.Text;

            string sel = string.Format(" select * FROM[dbo].[empleado] where Nombredelempleado='{0}' and tipodeempleado ='{1}'", Nombredelempleado.Text, tipodeempleado.Text);
            SqlCommand comando = new SqlCommand(sel, conexion);
            var resultado = comando.ExecuteScalar();


            if (resultado != null)
            {
                MessageBox.Show("La clave de usuario ya existe");
            }
            else
            {

                string cadena = string.Format("'{0}','{1}','{2}','{3}','{4}'", Nombredelem, templeado, Direc, Telefo, Correoelc);
                string cadena1 = "insert into empleado(Nombredelempleado,tipodeempleado,Direccion,Telefono,Correoelectronico) values (" + cadena + ")";
                comando = new SqlCommand(cadena1, conexion);
                comando.ExecuteNonQuery();
                MessageBox.Show("Los datos se guardaron correctamente");
                Nombredelempleado.Text = "";
                tipodeempleado.Text = "";
                Direccion.Text = "";
                Telefono.Text = "";
                Correoelectronico.Text = "";
                conexion.Close();
            }



        }
    }
}

