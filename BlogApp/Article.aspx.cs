using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BlogApp
{
    public partial class Article : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void saveButton_Click(object sender, EventArgs e)
        {
            string title = titleTextBox.Text;
            string author = authorTextBox.Text;
            string content = Server.HtmlEncode(tinyTextBox.Text);
            //string date = dateTextBox.Text;
            //DateTime today = DateTime.Today;

            Articl aArticle = new Articl(title, author, content);

            if (SaveArticle(aArticle))
            {
                MessageLabel.Text = " Inserted Successfully";
            }
            else
            {
                MessageLabel.Text = "Insertion Failed!";
            }


        }

        private bool SaveArticle(Articl aArticle)
        {
            string connectionString = WebConfigurationManager.ConnectionStrings["BlogConnectionString"].ConnectionString;
            SqlConnection connection = new SqlConnection(connectionString);

            string query = string.Format("INSERT INTO t_article VALUES ('{0}','{1}','{2}')", aArticle.Title,
                aArticle.Content, aArticle.Author);
            SqlCommand command = new SqlCommand(query,connection);

            connection.Open();
            int rowAffected = command.ExecuteNonQuery();
            connection.Close();
            return rowAffected > 0;


        }
        
        public class Articl
        {
            public string Title { set; get; }
            public string Author { set; get; }

            public string Content { set; get; }

            //public string Date { set; get; }

            public Articl(string title1, string author1, string content1)
            {
                Title = title1;
                Author = author1;
                Content = content1;
            }
        }
    }
}