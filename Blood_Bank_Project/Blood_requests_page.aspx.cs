﻿using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Blood_Bank_Project
{
    public partial class Blood_requests_page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Durgesh\source\repos\Blood_Bank_Project\Blood_Bank_Project\App_Data\BloodBank.mdf;Integrated Security=True");
            conn.Open();
            SqlCommand cmd = new SqlCommand("Insert into tbl_blood_request values(@date_of_request,@blood_group,@no_of_bags,@amount_per_bags,@purpose,@request_status,@remarks)", conn);
            cmd.Parameters.AddWithValue("date_of_request", TextBox3.Text);
            cmd.Parameters.AddWithValue("blood_group", TextBox1.Text);
            cmd.Parameters.AddWithValue("no_of_bags", DropDownList1.SelectedValue);
            cmd.Parameters.AddWithValue("amount_per_bags", DropDownList2.SelectedValue);
            cmd.Parameters.AddWithValue("purpose", TextBox2.Text);
            cmd.Parameters.AddWithValue("request_status", DropDownList3.SelectedValue);
            cmd.Parameters.AddWithValue("remarks", TextBox10.Text);
            cmd.ExecuteNonQuery();
            conn.Close();
            Response.Write("<script>alert(`Registration Has Been Saved Successfully`)</script>");
        }
    }
}