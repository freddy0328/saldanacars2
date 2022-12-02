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
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            {
                SqlConnection conexion = new SqlConnection("server=DESKTOP-4FS1H55 ; database=DBSaldañaCar ; integrated security = true");
                conexion.Open();
                string Usuar = Usuario.Text;
                string Contras = Contrasena.Text;

                string sel = string.Format(" select * FROM[dbo].[Usuario] where Clave='{0}' and Contrasena ='{1}'", Usuario.Text, Contrasena.Text);
                SqlCommand comando = new SqlCommand(sel, conexion);
                var resultado = comando.ExecuteScalar();



                if (resultado != null)
                {
                    Session["Usuario"] = Usuario.Text;
                    Response.Redirect("~/Default.aspx");
                }
                else
                {

                 
                    MessageBox.Show("El Usuario No Existe");
                    Usuario.Text = "";
                    Contrasena.Text = "";
                }




                conexion.Close();
            }
        }
    }
}

    