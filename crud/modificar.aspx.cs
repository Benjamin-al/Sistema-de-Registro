using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace crud
{
    public partial class Modificar : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["cnx"].ConnectionString);
        ws.grud_wsSoapClient ws = new ws.grud_wsSoapClient();

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void buscarPorrut()
        {
            string rut;
            rut = txtbuscar.Text;

            try
            {
                if (rut.Length > 10 || rut.Length == 0 || rut.Length < 10)
                {
                    lblerror.Text = "Debe ingresar el rut y no debe tener mas de 10 caracteres ";
                }
                else
                {
                    string query = "SELECT * FROM registro WHERE rut=@rut";
                    SqlCommand cmd = new SqlCommand(query, conn);
                    cmd.Parameters.AddWithValue("@rut", rut);
                    conn.Open();
                    SqlDataReader registro = cmd.ExecuteReader();

                    while (registro.Read() == true)
                    {
                        txtnombre.Text = registro["nombre"].ToString();
                        txtapellido.Text = registro["apellido"].ToString();
                        txtedad.Text = registro["edad"].ToString();
                        lblerror.Text = "";
                    }
                    conn.Close();
                }
            }
            catch (Exception) {
                Response.Redirect("error404.aspx");
            }
        }
        public void actualizar()
        {
            string rut, nombre, apellido, edad;
            rut = txtbuscar.Text;
            nombre = txtnombre.Text;
            apellido = txtapellido.Text;
            edad = txtedad.Text;

            try
            {
                if (rut.Length > 10 || rut.Length == 0 || rut.Length < 10)
                {
                    lblerror.Text = "Debe ingresar el rut y no debe tener mas de 10 caracteres ";
                }
                else
                {
                    lblerror.Text = "";
                    ws.update(rut, nombre, apellido, edad);
                    Response.Redirect("listar.aspx");
                }
            }
            catch (Exception){
                Response.Redirect("error404.aspx");
            }
        }

        protected void btnbuscar_Click(object sender, EventArgs e)
        {
            buscarPorrut();
        }

        protected void btnactualizar_Click(object sender, EventArgs e)
        {
            actualizar();
        }
    }
}