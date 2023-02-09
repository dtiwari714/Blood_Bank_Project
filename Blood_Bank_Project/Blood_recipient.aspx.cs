using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace Blood_Bank_Project
{
    public partial class Blood_receiver : System.Web.UI.Page
    {
        static String imagelink;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            if (uploadimage() == true)
            {
                SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Durgesh\source\repos\Blood_Bank_Project\Blood_Bank_Project\App_Data\BloodBank.mdf;Integrated Security=True");
                conn.Open();
                SqlCommand cmd = new SqlCommand("insert into tbl_recipient values(@recipient_complete_name,@recipient_photo,@blood_group_id,@blood_group_id,@complete_address,@region,@city,@contact,@email_address,@age,@remarks,@user_id)", conn);
                cmd.Parameters.AddWithValue("recipient_complete_name", TextBox1.Text);
                cmd.Parameters.AddWithValue("recipient_photo", imagelink);
                cmd.Parameters.AddWithValue("blood_group_id", DropDownList1.SelectedValue);
                cmd.Parameters.AddWithValue("complete_address", TextBox2.Text);
                cmd.Parameters.AddWithValue("region", DropDownList1.SelectedValue);
                cmd.Parameters.AddWithValue("city", DropDownList3.SelectedValue);
                cmd.Parameters.AddWithValue("contact", TextBox5.Text);
                cmd.Parameters.AddWithValue("email_address",TextBox6.Text);
                cmd.Parameters.AddWithValue("age", TextBox3.Text);
                cmd.Parameters.AddWithValue("remarks", TextBox4.Text);
                cmd.Parameters.AddWithValue("user_id", DropDownList2.SelectedValue);
                cmd.ExecuteNonQuery();
                conn.Close();
                Response.Write("<script>alert(`Registration Has Been Saved Successfully`)</script>");
            }
        }
        private Boolean uploadimage()
        {
            Boolean imagesaved = false;
            if (FileUpload1.HasFile == true)
            {

                String contenttype = FileUpload1.PostedFile.ContentType;

                if (contenttype == "image/jpeg")
                {
                    int filesize;
                    filesize = FileUpload1.PostedFile.ContentLength;

                    if (filesize <= 51200)
                    {
                        System.Drawing.Image img = System.Drawing.Image.FromStream(FileUpload1.PostedFile.InputStream);
                        int height = img.Height;
                        int width = img.Width;
                        if (height <= 200 && width <= 200)
                        {
                            FileUpload1.SaveAs(Server.MapPath("~/Profile_Img/") + TextBox1.Text + ".jpg");
                            Image1.ImageUrl = "~/Profile_Img/" + TextBox1.Text + ".jpg";
                            imagelink = "Profile_Img/" + TextBox1.Text + ".jpg";
                            imagesaved = true;
                        }
                        else
                        {
                            Response.Write("<script>alert(`Kindly Upload JPEG Image in Proper Dimensions 200 x 200`)</script>");
                        }
                    }
                    else
                    {
                        Response.Write("<script>alert(`File Size exceeds 50 KB - Please Upload File Size Maximum 50 KB`)</script>");
                    }

                }
                else
                {
                    Response.Write("<script>alert(`Only JPEG/JPG Image File Acceptable - Please Upload Image File Again`)</script>");
                }
            }
            else
            {
                Response.Write("<script>alert(`You have not selected any file - Browse and Select File First`)</script>");
            }

            return imagesaved;

        }
    }
}