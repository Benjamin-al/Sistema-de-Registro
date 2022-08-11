using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace crud
{
    public partial class listar : System.Web.UI.Page
    {
        ws.grud_wsSoapClient ws = new ws.grud_wsSoapClient();
        protected void Page_Load(object sender, EventArgs e)
        {
            viewInfo();
        }


        public void viewInfo() {
            try
            {
                DataSet ds = ws.listar();
                datagrid.DataSource = ds.Tables[0];
                datagrid.DataBind();
            }
            catch (Exception) {
                Response.Redirect("error404.aspx");
            }
       
        }

        public void buscar()
        {
            string rut;
            rut = txtbuscar.Text;
            try
            {
                if (txtbuscar.Text == "")
                {
                    viewInfo();
                }
                else
                {
                    DataSet ds = ws.buscar(rut);
                    datagrid.DataSource = ds.Tables[0];
                    datagrid.DataBind();
                }
            }
            catch (Exception) {
                Response.Redirect("error404.aspx");
            }
                
        }

        public void eliminar()
        {
            try
            {
                string rut;
                rut = txtbuscar.Text;
                ws.Eliminar(rut);
                viewInfo();
            }
            catch (Exception) {
                Response.Redirect("error404.aspx");
            }
           
        }

        protected void datagrid_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            datagrid.PageIndex = e.NewPageIndex;
            viewInfo();
        }

        protected void btnbuscar_Click(object sender, EventArgs e)
        {
            buscar();
        }

        protected void btneliminar_Click(object sender, EventArgs e)
        {
            eliminar();
            txtbuscar.Text = "";
        }

        protected void btnModificar_Click(object sender, EventArgs e)
        {
            Response.Redirect("modificar.aspx");
        }
    }
}