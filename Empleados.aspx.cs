using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Windows.Forms;
namespace saldanacars2
{
    public partial class Empleados : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Usuario"] == null)
            {
                Response.Redirect("~/login.aspx");
            }
            if (!IsPostBack)
            {
                CargaGrid();
            }



        }

        private void CargaGrid()
        {
            try
            {
                SqlConnection conexion = new SqlConnection("server=DESKTOP-4FS1H55 ; database=DBSaldañaCar ; integrated security = true");
                conexion.Open();

                DataTable dt = new DataTable();
        string sel = string.Format(" select id,Nombredelempleado, tipodeempleado, Direccion, Telefono,Correoelectronico FROM[dbo].[empleado]");
        SqlCommand comando = new SqlCommand(sel, conexion);
        SqlDataAdapter SDA = new SqlDataAdapter(comando);
        SDA.Fill(dt);
                conexion.Close();
                SDA.Dispose();

               GVUsuarios.DataSource = dt;
                GVUsuarios.DataBind();
            }
            catch (Exception ex)
            {


            }
        }
        protected void Editlink_Click(object sender, EventArgs e)
{
    LinkButton linkbutton = (LinkButton)sender;
    GridViewRow row = (GridViewRow)linkbutton.NamingContainer;
    txtId.Text = row.Cells[2].Text;
            txtNombredelempleado.Text = row.Cells[3].Text;
           txttipodeempleado.Text = row.Cells[5].Text;
            txtDireccion.Text = row.Cells[4].Text;
            txtTelefono.Text = row.Cells[6].Text;
            txtCorreoelectronico.Text = row.Cells[7].Text;
            
            Modo.Value = "Edit";
    var paso = linkbutton.CommandArgument;
    ScriptManager.RegisterStartupScript(this, GetType(), "displayalertmessage", "$('#myModal').modal()", true);
}
protected void Deletelink_Click(object sender, EventArgs e)
{
    LinkButton linkbutton = (LinkButton)sender;
    GridViewRow row = (GridViewRow)linkbutton.NamingContainer;
    txtId.Text = row.Cells[2].Text;
            txtNombredelempleado.Text = row.Cells[3].Text;
            txttipodeempleado.Text = row.Cells[5].Text;
            txtDireccion.Text = row.Cells[4].Text;
            txtTelefono.Text = row.Cells[6].Text;
            txtCorreoelectronico.Text = row.Cells[7].Text;
            Modo.Value = "Delete";
    var paso = linkbutton.CommandArgument;
    ScriptManager.RegisterStartupScript(this, GetType(), "displayalertmessage", "$('#myModal').modal()", true);
}

protected void btnNuevo_Click(object sender, EventArgs e)
{
    Modo.Value = "Nuevo";
    txtId.Text = "0";
    ScriptManager.RegisterStartupScript(this, GetType(), "displayalertmessage", "$('#myModal').modal()", true);
}
        
        
        protected void btnEnter_Click(object sender, EventArgs e)
        {
            SqlConnection conexion = new SqlConnection("server=DESKTOP-4FS1H55 ; database=DBSaldañaCar ; integrated security = true");
            conexion.Open();
            string cadena = string.Empty;
            string cadena1 = string.Empty;
            SqlCommand comando = new SqlCommand();

            if (Modo.Value == "Edit")
            {
                cadena = string.Format(" update empleado set Nombredelempleado = '{0}', tipodeempleado= '{1}', Direccion = {2}, Telefono = '{3}', CorreoElectronico = '{4}'  where id = {5}", txtNombredelempleado.Text,txttipodeempleado.Text, txtDireccion.Text, txtTelefono.Text, txtCorreoelectronico.Text,  txtId.Text);
                //cadena1 = ("updateClientes set Nombredelcliente,Direccion,Telefono,Correoelectronico,Contrasena");
                comando = new SqlCommand(cadena, conexion);
                comando.ExecuteNonQuery();
                MessageBox.Show("Los datos se guardaron correctamente");

            }
            else if (Modo.Value == "Delete")
            {
                //cadena = string.Format("'{0}','{1}',{2},'{3}','{4}'", txtlblNombredelcliente.Text, txtDireccion.Text, txtTelefono.Text, txtCorreoelectronico.Text, txtContrasena);
                cadena1 = string.Format("Delete  empleado  where id = {0}", txtId.Text);
                comando = new SqlCommand(cadena1, conexion);
                comando.ExecuteNonQuery();
                MessageBox.Show("Los datos se eliminaron correctamente");

            }

            else if (Modo.Value == "Nuevo")
            {
                cadena = string.Format("'{0}','{1}','{2}',{3},'{4}'", txtNombredelempleado.Text, txttipodeempleado.Text, txtDireccion.Text, txtTelefono.Text, txtCorreoelectronico.Text);
                cadena1 = "insert into empleado(Nombredelempleado,tipodeempleado,Direccion,Telefono,Correoelectronico) values (" + cadena + ")";
                comando = new SqlCommand(cadena1, conexion);
                comando.ExecuteNonQuery();
                MessageBox.Show("Los datos se guardaron correctamente");
               
                txtNombredelempleado.Text = "";
                txttipodeempleado.Text = "";
                txtDireccion.Text = "";
                txtTelefono.Text = "";
                txtCorreoelectronico.Text = "";
               

            }
            conexion.Close();
            CargaGrid();

        }
    }
}
        
            

        
    






