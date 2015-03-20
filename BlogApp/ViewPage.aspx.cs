using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Runtime.InteropServices;
using System.Security.Cryptography;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BlogApp
{
    public partial class ViewPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string connectionString = WebConfigurationManager.ConnectionStrings["BlogConnectionString"].ConnectionString;
            SqlConnection connection = new SqlConnection(connectionString);



            SqlCommand command = new SqlCommand("SELECT * FROM t_article;", connection);
            connection.Open();

            SqlDataReader reader = command.ExecuteReader();
            DataTable schemeTable = reader.GetSchemaTable();

            while (reader.Read())
            {


                foreach (DataRow row in schemeTable.Rows)
                {

                    foreach (DataColumn column in schemeTable.Columns)
                    {
                        Label1.Text = reader["Title"].ToString();
                        Label2.Text = reader["Author"].ToString();
                    }

                }
            }




        }

        protected void Button1_Click(object sender, EventArgs e)
        {


          
        }
    }
}