using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Blood_Bank_Project
{
    public partial class Admin_Login : System.Web.UI.Page
    {
        String Query;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Durgesh\source\repos\Blood_Bank_Project1\Blood_Bank_Project\App_Data\BloodBank.mdf;Integrated Security=True");
            conn.Open();
            SqlCommand cmd = new SqlCommand("Select * from [tbl_admin] where UserName = @UserName and Password = @Password", conn);
            cmd.Parameters.AddWithValue("@UserName", TextBox1.Text.ToString());
            cmd.Parameters.AddWithValue("@Password", TextBox2.Text.ToString());
            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.Read())
            {
                Session["UserName"] = TextBox1.Text.ToString();
                Response.Write("<script>alert(`Login Succesfull`)</script>");
                reader.Close();
                conn.Close();
                Response.Redirect("~/ViewDonor.aspx");
            }
            else
            {
                Response.Write("<script>alert(`Email and Password is Incorrect`)</script>");
            }

        }
    }
}