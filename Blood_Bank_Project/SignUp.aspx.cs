using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Blood_Bank_Project
{
    public partial class SignUp : System.Web.UI.Page
    {
        static String imagelink;

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Register_Click(object sender, EventArgs e)
        {
            
            if (uploadimage() == true)
            {
                SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Durgesh\source\repos\Blood_Bank_Project1\Blood_Bank_Project\App_Data\BloodBank.mdf;Integrated Security=True");
                conn.Open();
                SqlCommand cmd = new SqlCommand("insert into tbl_user values(@username,@password,@avatar,@fullname,@contact,@email)", conn);
                cmd.Parameters.AddWithValue("username", TextBox4.Text);
                cmd.Parameters.AddWithValue("password", TextBox5.Text);
                cmd.Parameters.AddWithValue("avatar", imagelink);
                cmd.Parameters.AddWithValue("fullname",TextBox1.Text);
                cmd.Parameters.AddWithValue("contact", TextBox3.Text);
                cmd.Parameters.AddWithValue("email", TextBox2.Text);
                cmd.ExecuteNonQuery();
                Session["fullname"]=TextBox1.Text.ToString();
                conn.Close();
                Response.Write("<script>alert(`registration has been saved successfully`)</script>");
            }
            Response.Redirect("~/login_form.aspx");
        }
        private Boolean uploadimage()
        {
            Boolean imagesaved = false;
            if (FileUpload1.HasFile == true)
            {

                string contenttype = FileUpload1.PostedFile.ContentType;

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
                            FileUpload1.SaveAs(Server.MapPath("~/profile_img/") + TextBox4.Text + ".jpg");
                            Image1.ImageUrl = "~/profile_img/" + TextBox4.Text + ".jpg";
                            imagelink = "profile_img/" + TextBox4.Text + ".jpg";
                            imagesaved = true;
                        }
                        else
                        {
                            Response.Write("<script>alert(`kindly upload jpeg image in proper dimensions 200 x 200`)</script>");
                        }
                    }
                    else
                    {
                        Response.Write("<script>alert(`file size exceeds 50 kb - please upload file size maximum 50 kb`)</script>");
                    }

                }
                else
                {
                    Response.Write("<script>alert(`only jpeg/jpg image file acceptable - please upload image file again`)</script>");
                }
            }
            else
            {
                Response.Write("<script>alert(`you have not selected any file - browse and select file first`)</script>");
            }

            return imagesaved;

        }
    }
}
