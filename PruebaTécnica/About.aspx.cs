using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PruebaTécnica
{
    public partial class About : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void actualizarFact(object sender, EventArgs e)
        {
            SqlConnection conection = new SqlConnection("Data Source=DESKTOP-6GPG2IV;Initial Catalog=PruebaTecnica;Integrated Security=True");
            SqlCommand command = new SqlCommand();
            command.Connection = conection;
            conection.Open();
            command.CommandType = System.Data.CommandType.StoredProcedure;
            command.CommandText = "dbo.UPDATE_FACTH";
            command.Parameters.AddWithValue("@ID", TextBox7.Text);
            command.Parameters.AddWithValue("@FECHAFACT", Convert.ToDateTime(TextBox8.Text));
            command.Parameters.AddWithValue("@CLIENTEID", TextBox9.Text);
            command.Parameters.AddWithValue("@TOTALFACT", TextBox10.Text);
            command.Parameters.AddWithValue("@ITBISFACT", TextBox11.Text);

            int rows = command.ExecuteNonQuery();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conection = new SqlConnection("Data Source=DESKTOP-6GPG2IV;Initial Catalog=PruebaTecnica;Integrated Security=True");
            SqlCommand command = new SqlCommand();
            command.Connection = conection;
            conection.Open();
            command.CommandType = System.Data.CommandType.StoredProcedure;
            command.CommandText = "dbo.INSERT_FACTH";
            command.Parameters.AddWithValue("@ID", TextBox1.Text);
            command.Parameters.AddWithValue("@FECHAFACT", Convert.ToDateTime(TextBox2.Text));
            command.Parameters.AddWithValue("@CLIENTEID", TextBox3.Text);
            command.Parameters.AddWithValue("@TOTALFACT", TextBox4.Text);
            command.Parameters.AddWithValue("@ITBISFACT", TextBox5.Text);

            int rows = command.ExecuteNonQuery();
        }

        protected void insertFactd(object sender, EventArgs e)
        {
            SqlConnection conection = new SqlConnection("Data Source=DESKTOP-6GPG2IV;Initial Catalog=PruebaTecnica;Integrated Security=True");
            SqlCommand command = new SqlCommand();
            command.Connection = conection;
            conection.Open();
            command.CommandType = System.Data.CommandType.StoredProcedure;
            command.CommandText = "dbo.INSERT_FACTD";
            command.Parameters.AddWithValue("@ID", TextBox6.Text);
            command.Parameters.AddWithValue("@IDHEADER", TextBox12.Text);
            command.Parameters.AddWithValue("@CANTIDAD", TextBox13.Text);
            command.Parameters.AddWithValue("@DESCRIPCION", TextBox14.Text);
            command.Parameters.AddWithValue("@ITBIS", TextBox15.Text);
            command.Parameters.AddWithValue("@COSTOUNIT", TextBox21.Text);


            int rows = command.ExecuteNonQuery();
        }

        protected void actualizarFactd(object sender, EventArgs e)
        {
            SqlConnection conection = new SqlConnection("Data Source=DESKTOP-6GPG2IV;Initial Catalog=PruebaTecnica;Integrated Security=True");
            SqlCommand command = new SqlCommand();
            command.Connection = conection;
            conection.Open();
            command.CommandType = System.Data.CommandType.StoredProcedure;
            command.CommandText = "dbo.UPDATE_FACTD";
            command.Parameters.AddWithValue("@ID", TextBox16.Text);
            command.Parameters.AddWithValue("@IDHEADER",TextBox17.Text);
            command.Parameters.AddWithValue("@CANTIDAD", TextBox18.Text);
            command.Parameters.AddWithValue("@DESCRIPCION", TextBox19.Text);
            command.Parameters.AddWithValue("@ITBIS", TextBox20.Text);
            command.Parameters.AddWithValue("@COSTOUNIT", TextBox23.Text);


            int rows = command.ExecuteNonQuery();
        }
    }
}