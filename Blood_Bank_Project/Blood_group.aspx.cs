using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Blood_Bank_Project
{
    public partial class Blood_group : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Durgesh\source\repos\Blood_Bank_Project\Blood_Bank_Project\App_Data\BloodBank.mdf;Integrated Security=True");
            conn.Open();
            SqlCommand cmd = new SqlCommand("Insert into tbl_blood_group values(@blood_group_name,@description)", conn);
            cmd.Parameters.AddWithValue("blood_group_name", TextBox1.Text);
            cmd.Parameters.AddWithValue("description", TextBox2.Text);
            cmd.ExecuteNonQuery();
            conn.Close();
            Response.Write("<script>alert(`Registration Has Been Saved Successfully`)</script>");
        }
    }
}