using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Blood_Bank_Project
{
    public partial class ViewDonor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                FillGridView();
            }
            if (IsPostBack)
            {
                FillGridView();
            }
        }
        void FillGridView()
        {
            SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Durgesh\source\repos\Blood_Bank_Project1\Blood_Bank_Project\App_Data\BloodBank.mdf;Integrated Security=True");
            String query1 = "SELECT [donor_id], [donor_name], [donor_photo], [blood_group_id], [contact] FROM [tbl_donor]";
            SqlDataAdapter sda = new SqlDataAdapter(query1, conn);
            DataTable data = new DataTable();
            sda.Fill(data);
            //GridView1.DataSource = data;
            GridView1.DataBind();
        }
    }
}