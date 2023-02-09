using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Blood_Bank_Project
{
    public partial class Information_Forms : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                Label1.Text = Session["username"].ToString();
                Response.Write("Welcome," + Label1.Text);
            }
            else
            {
                Response.Redirect("~/HomePage.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void AnchorButton_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Session.Abandon();
            Response.Redirect("~/HomePage.aspx");
        }
    }
}