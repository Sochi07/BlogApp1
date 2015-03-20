using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BlogApp
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void newButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Article.aspx");
        }

        protected void viewPost_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewArticle.aspx");
        }
    }
}