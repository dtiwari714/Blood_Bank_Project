using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Blood_Bank_Project
{
    public partial class Blood_collection_page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Calendar1.Visible = true;
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            TextBox3.Text = Calendar1.SelectedDate.ToLongDateString();
            Calendar1.Visible = false;
        }
        protected void Submit(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Durgesh\source\repos\Blood_Bank_Project\Blood_Bank_Project\App_Data\BloodBank.mdf;Integrated Security=True");
            conn.Open();
            SqlCommand cmd = new SqlCommand("Insert into tbl_blood_collection values(@hospital,@no_of_bags,@date_of_collection,@nurse_doctor_in_charge,@remarks)", conn);
            cmd.Parameters.AddWithValue("hospital", TextBox1.Text);
            cmd.Parameters.AddWithValue("no_of_bags", TextBox2.Text);
            cmd.Parameters.AddWithValue("date_of_collection", TextBox3.Text);
            cmd.Parameters.AddWithValue("nurse_doctor_in_charge", TextBox4.Text);
            cmd.Parameters.AddWithValue("remarks", TextBox5.Text);
            cmd.ExecuteNonQuery();
            conn.Close();
            Response.Write("<script>alert(`Registration Has Been Saved Successfully`)</script>");
        }
    }
}