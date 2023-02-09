using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Blood_Bank_Project
{
    public partial class Login_Form : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Durgesh\source\repos\Blood_Bank_Project1\Blood_Bank_Project\App_Data\BloodBank.mdf;Integrated Security=True");
            conn.Open();
            SqlCommand cmd = new SqlCommand("Select * from [tbl_user] where userName = @username and password = @password", conn);
            cmd.Parameters.AddWithValue("@username", TextBox1.Text.ToString());
            cmd.Parameters.AddWithValue("@password", TextBox2.Text.ToString());
            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.Read())
            {
                Session["username"] = TextBox1.Text.ToString();
                Response.Write("<script>alert(`Login Succesfull`)</script>");
                reader.Close();
                conn.Close();
                Response.Redirect("~/Donor_Information.aspx");
            }
            else
            {
                Response.Write("<script>alert(`Email and Password is Incorrect`)</script>");
            }
        }
    }
}