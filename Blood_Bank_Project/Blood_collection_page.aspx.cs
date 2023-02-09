using System;
using System.Collections.Generic;
using System.Data;
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
            //if (!IsPostBack)
            //{
            //    BindDropDownList();
            //}
        }
        //void BindDropDownList()
        //{
        //    SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Durgesh\source\repos\Blood_Bank_Project\Blood_Bank_Project\App_Data\BloodBank.mdf;Integrated Security=True");
        //    //conn.Open();
        //    String query = "Select * from tbl_donor";
        //    String query1 = "Select * from tbl_blood_group";
        //    String query2 = "Select * from tbl_user";
        //    SqlDataAdapter sda=new SqlDataAdapter(query, conn);
        //    SqlDataAdapter sda1 = new SqlDataAdapter(query1, conn);
        //    SqlDataAdapter sda2 = new SqlDataAdapter(query2, conn);
        //    DataTable data=new DataTable();
        //    sda.Fill(data);
        //    sda1.Fill(data);
        //    sda2.Fill(data);
        //    DropDownList1.DataSource= data;
        //    DropDownList1.DataTextField= "donor_id";
        //    DropDownList1.DataValueField = "donor_id";
        //    DropDownList1.DataBind();

        //    DropDownList2.DataSource= data;
        //    DropDownList2.DataTextField = "blood_group_id";
        //    DropDownList2.DataValueField = "blood_group_id";
        //    DropDownList2.DataBind();

        //    DropDownList3.DataSource= data;
        //    DropDownList3.DataTextField = "user_id";
        //    DropDownList3.DataValueField = "user_id";
        //    DropDownList2.DataBind();

        //    ListItem SelectedItem=new ListItem("Select Donor_Id","-1");
        //    SelectedItem.Selected= true;
        //    DropDownList1.Items.Insert(0, SelectedItem);
        //    ListItem SelectedItem1 = new ListItem("Select Blood_Group_Id", "-1");
        //    SelectedItem1.Selected = true;
        //    DropDownList2.Items.Insert(0, SelectedItem1);
        //    ListItem SelectedItem2 = new ListItem("Select User_Id", "-1");
        //    SelectedItem2.Selected = true;
        //    DropDownList3.Items.Insert(0, SelectedItem2);

        //}
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
                SqlCommand cmd = new SqlCommand("Insert into tbl_blood_collection values(@hospital,@donor_id,@blood_group_id,@no_of_bags,@date_of_collection,@nurse_doctor_in_charge,@remarks,@user_id)", conn);
                cmd.Parameters.AddWithValue("hospital",TextBox1.Text);
                cmd.Parameters.AddWithValue("donor_id", Convert.ToInt32(DropDownList1.SelectedValue.ToString()));
                cmd.Parameters.AddWithValue("blood_group_id", Convert.ToInt32(DropDownList2.SelectedValue.ToString()));
                cmd.Parameters.AddWithValue("no_of_bags", Convert.ToInt32(TextBox2.Text));
                cmd.Parameters.AddWithValue("date_of_collection", TextBox3.Text);
                cmd.Parameters.AddWithValue("nurse_doctor_in_charge", TextBox4.Text);
                cmd.Parameters.AddWithValue("remarks", TextBox5.Text);
                cmd.Parameters.AddWithValue("user_id", Convert.ToInt32(DropDownList3.SelectedValue.ToString()));
                cmd.ExecuteNonQuery();
                conn.Close();
                Response.Write("<script>alert(`Registration Has Been Saved Successfully`)</script>");
            
        }

        
    }
}