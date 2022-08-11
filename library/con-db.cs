using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.Sql;
using System.Data.SqlClient;

namespace library
{
    public class con_db
    {
        public SqlConnection getConection()
        {

            try
            {
                string cadena = @"Data Source=BENJAMIN-ALFARO;Initial Catalog=registro;Integrated Security=True";
                SqlConnection cn = new SqlConnection(cadena);
                cn.Open();
                return cn;
            }
            catch (Exception)
            {
                return null;
            }


        }
    }
}
