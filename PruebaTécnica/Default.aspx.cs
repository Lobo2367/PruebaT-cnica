using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PruebaTécnica
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conection = new SqlConnection("Data Source=DESKTOP-6GPG2IV;Initial Catalog=PruebaTecnica;Integrated Security=True");
            SqlCommand command = new SqlCommand();
            command.Connection = conection;
            conection.Open();
            command.CommandType = System.Data.CommandType.StoredProcedure;
            command.CommandText = "dbo.INSERT_CLIENT";
            command.Parameters.AddWithValue("@ID", TextBox1.Text);
            command.Parameters.AddWithValue("@FECHA", Convert.ToDateTime(TextBox2.Text));
            command.Parameters.AddWithValue("@NOMBRE", TextBox3.Text);
            command.Parameters.AddWithValue("@APELLIDOS", TextBox4.Text);
            command.Parameters.AddWithValue("@DOCUMENTO", TextBox5.Text);
            command.Parameters.AddWithValue("@DIRECCION", TextBox6.Text);

            int rows = command.ExecuteNonQuery();
        }

        protected void actualizarClient(object sender, EventArgs e)
        {
            SqlConnection conection = new SqlConnection("Data Source=DESKTOP-6GPG2IV;Initial Catalog=PruebaTecnica;Integrated Security=True");
            SqlCommand command = new SqlCommand();
            command.Connection = conection;
            conection.Open();
            command.CommandType = System.Data.CommandType.StoredProcedure;
            command.CommandText = "dbo.UPDATE_CLIENT";
            command.Parameters.AddWithValue("@ID", TextBox7.Text);
            command.Parameters.AddWithValue("@FECHA", Convert.ToDateTime(TextBox8.Text));
            command.Parameters.AddWithValue("@NOMBRE", TextBox9.Text);
            command.Parameters.AddWithValue("@APELLIDOS", TextBox10.Text);
            command.Parameters.AddWithValue("@DOCUMENTO", TextBox11.Text);
            command.Parameters.AddWithValue("@DIRECCION", TextBox12.Text);

            int rows = command.ExecuteNonQuery();
        }
    }
}