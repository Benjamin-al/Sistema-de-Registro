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
    public partial class registro : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["cnx"].ConnectionString);
        ws.grud_wsSoapClient ws = new ws.grud_wsSoapClient();
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        public void limpiarcampos() {
            txtrut.Text = "";
            txtnombre.Text = "";
            txtapellido.Text = "";
            txtedad.Text = "";
        }

        public bool ExistePersona(string rut)
        {
            //trae la cantidad de registros que esten en la base de datos 
            //cuando el nombre del proveedor sea igual al que llega por parametro
            string sql = "SELECT COUNT (*) FROM registro WHERE rut=@rut";
            SqlCommand cmd = new SqlCommand(sql, conn);//traemos la consulta y la coneccion
            conn.Open();
            cmd.Parameters.AddWithValue("@rut", rut);//agregamos el campo que vendra por parametro

            int count = Convert.ToInt32(cmd.ExecuteScalar());//traemos la cantidad de registros

            //si la cantidad es 0 esto quiere desir que no hay ningun dato con el mismo nombre
            if (count == 0)
            {
                return false;
            }
            else
            {
                return true;
            }
        }

        public void registrar() {

            int ed,d;
            string rut=txtrut.Text , nombre = txtnombre.Text , apellido = txtapellido.Text;
            int.TryParse(txtedad.Text, out d);
            ed = d;
            try
            {   
                if (rut.Length > 10 || rut.Length == 0 || rut.Length < 10){
                    lblerror.Text = "Debe ingresar el rut y no debe tener mas de 10 caracteres ";
                }
                else if (nombre == ""){
                    lblerror.Text = "Ingrese un nombre";
                }
                else if (apellido == ""){
                    lblerror.Text = "Ingrese el Apellido";
                }
                else if (ed == 0){
                    lblerror.Text = "Ingrese una edad Esta no debe ser menor a 1";
                }else if (ExistePersona(rut)) {
                    lblerror.Text = "ERROR Rut Duplicado";
                }else if (ws.Insertar(rut, nombre, apellido, ed)) {
                    lblerror.Text = "";
                    limpiarcampos();
                    mensaje.Text = "Registro Exitoso";
                }
                else {
                    mensaje.Text = "Error Al Registrar";
                }
            }
            catch (Exception e) {
                Response.Redirect("error404.aspx");
            }
           
        }
        protected void btnregistrar_Click(object sender, EventArgs e)
        {
            registrar();
        }
    }
}