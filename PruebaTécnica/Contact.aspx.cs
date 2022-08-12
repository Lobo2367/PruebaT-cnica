using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PruebaTécnica
{
    public partial class Contact : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void eliminarClient(object sender, EventArgs e)
        {
            SqlConnection conection = new SqlConnection("Data Source=DESKTOP-6GPG2IV;Initial Catalog=PruebaTecnica;Integrated Security=True");
            SqlCommand command = new SqlCommand();
            command.Connection = conection;
            conection.Open();
            command.CommandType = System.Data.CommandType.StoredProcedure;
            command.CommandText = "dbo.DELETE_CLIENT";
            command.Parameters.AddWithValue("@ID", TextBox16.Text);
;

            int rows = command.ExecuteNonQuery();
        }
    }
}