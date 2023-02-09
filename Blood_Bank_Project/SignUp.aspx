<%@ Page Title="" Language="C#" MasterPageFile="~/DashBoard.Master" AutoEventWireup="True" Inherits="Blood_Bank_Project.SignUp" Codebehind="SignUp.aspx.cs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0-beta/css/bootstrap.min.css' rel='stylesheet' type='text/css'>
    <link href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Roboto' rel='stylesheet' type='text/css'>
    <style type="text/css">
        .auto-style1 {
            width: 70%;
            border: 2px solid #808080;
            background-color: #1A2226;
            text-align:center;
        }
        .auto-style2 {
            --bs-gutter-x: 1.5rem;
            --bs-gutter-y: 0;
            width: 61%;
            max-width: 1320px;
            margin-left: auto;
            margin-right: auto;
            padding-left: calc(var(--bs-gutter-x) * .5);
            padding-right: calc(var(--bs-gutter-x) * .5);
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <!--Marquee Tool-->
    <div id="First_Hi">
         <div class="news">
        <marquee class="blink"> “If you’re a blood donor, you’re a hero to someone, somewhere, who received your gracious gift of life.”
        </marquee>
         </div> 
     </div>
    <!--End Marquee Tool-->

<%--<div class="container mt-2 pt-3">
        <div class="row">
            <div class="col-lg-3 col-md-2"></div>
            <div class="col-lg-6 col-md-8 login-box">
                <div class="col-lg-12 login-key">
                    <i class="fa fa-key" aria-hidden="true"></i>
                </div>
                <div class="col-lg-12 login-title">
                    Sign Up As User
                </div>

                <div class="col-lg-12 login-form">
                    <div class="col-lg-12 login-form">--%>
                        <%--<form>--%>
                            <%--<div class="form-group">
                                <label class="form-control-label">Profile Image</label>
                                <asp:Image ID="Image1" runat="server" ImageAlign="Middle" Class="rounded mx-auto d-block" Height="200px" Width="200px" />
                                <asp:FileUpload ID="FileUpload1" runat="server" Width="60%" Height="60%" />
                            </div>
                            <div class="form-group">
                                <label class="form-control-label">NAME</label>
                                <asp:TextBox ID="TextBox5" runat="server" type="text" Class="form-control"></asp:TextBox>
                            </div>
                           <div class="form-group">
                                <label class="form-control-label">EMAIL</label>
                                <asp:TextBox ID="TextBox2" runat="server" type="text" Class="form-control"></asp:TextBox>
                            </div>
                           <div class="form-group">
                                <label class="form-control-label">CONTACT</label>
                                <asp:TextBox ID="TextBox6" runat="server" type="text" Class="form-control"></asp:TextBox>
                            </div>

                            <div class="form-group">
                                <label class="form-control-label">USERNAME</label>
                                <asp:TextBox ID="TextBox1" runat="server" type="text" Class="form-control"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label class="form-control-label">PASSWORD</label>
                                <asp:TextBox ID="TextBox3" runat="server" type="password" Class="form-control"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label class="form-control-label">CONFIRM PASSWORD:</label>
                                <asp:TextBox ID="TextBox4" runat="server" type="password" Class="form-control"></asp:TextBox>
                            </div>
 
                            <div class="col-lg-12 loginbttm">
                                <div class="col-lg-6 login-btm login-text">                           
                           </div>
                                <div class="col-lg-6 login-btm login-button">
                                    <asp:Button ID="Button1" runat="server" Text="Sign Up" Class="btn btn-primary" OnClick="Register_Click" />
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="form-control-label">Do You Have Account?</label>
                                <a href="Login_Form.aspx" style="color:aliceblue; font-size:10px">Sign In</a>
                            </div>--%>
                        <%--</form>--%>
                    <%--</div>
                </div>
            </div>
        </div>
    </div>--%>
    <div class="auto-style2">

        <table align="center" class="auto-style1">
            <tr>
                <td colspan="2" style="text-align:center; color: #FFFFFF; font-size:30px">Sign Up As User</td>
            </tr>
            <tr>
                <td colspan="2" style="text-align:center; color: #FFFFFF;"><asp:Image ID="Image1" runat="server" ImageAlign="Middle" Class="rounded mx-auto d-block" Height="200px" Width="200px" />
                                <asp:FileUpload ID="FileUpload1" runat="server" Width="60%" Height="60%" /></td>
            </tr>
             <tr>
                <td><asp:Label ID="Label1" runat="server" Text="Full Name" class="form-control-label" ForeColor="White"></asp:Label></td>
                <td><asp:TextBox ID="TextBox1" runat="server" type="text" Class="form-control"></asp:TextBox></td>
            </tr>
            <tr>
                <td><asp:Label ID="Label2" runat="server" Text="Email" class="form-control-label" ForeColor="White"></asp:Label></td>
                <td><asp:TextBox ID="TextBox2" runat="server" type="text" Class="form-control"></asp:TextBox></td>
            </tr>
            <tr>
                <td><asp:Label ID="Label3" runat="server" Text="Contact" class="form-control-label" ForeColor="White"></asp:Label></td>
                <td><asp:TextBox ID="TextBox3" runat="server" type="text" Class="form-control"></asp:TextBox></td>
            </tr>
            <tr>
                <td><asp:Label ID="Label4" runat="server" Text="Username" class="form-control-label" ForeColor="White"></asp:Label></td>
                <td><asp:TextBox ID="TextBox4" runat="server" type="text" Class="form-control"></asp:TextBox></td>
            </tr>
            <tr>
                <td><asp:Label ID="Label5" runat="server" Text="Password" class="form-control-label" ForeColor="White"></asp:Label></td>
                <td><asp:TextBox ID="TextBox5" runat="server" type="text" Class="form-control" TextMode="Password"></asp:TextBox></td>
            </tr>
            <tr>
                <td><asp:Label ID="Label6" runat="server" Text="ConfirmPassword" class="form-control-label" ForeColor="White"></asp:Label></td>
                <td><asp:TextBox ID="TextBox6" runat="server" type="text" Class="form-control" TextMode="Password"></asp:TextBox></td>
            </tr>
            <tr>
                <td colspan="2" style="text-align:center; color: #FFFFFF; font-size:45px">
                    <asp:Button ID="Button1" runat="server" Text="Sign Up" Class="btn btn-primary" OnClick="Register_Click" />
                </td>
            </tr>
             </table>

    </div>

<footer id="footer">
    <div class="container d-md-flex py-3">
      <div class="me-md-auto text-center text-md-start">
        <div class="copyright">
          &copy; Copyright <strong><span>RK Foundation</span></strong>. All Rights Reserved
        </div>
      </div>
      <div class="social-links text-center text-md-right pt-3 pt-md-0">
        <a href="#" class="twitter"><i class="bx bxl-twitter"></i></a>
        <a href="#" class="facebook"><i class="bx bxl-facebook"></i></a>
        <a href="#" class="instagram"><i class="bx bxl-instagram"></i></a>
        <a href="#" class="google-plus"><i class="bx bxl-skype"></i></a>
        <a href="#" class="linkedin"><i class="bx bxl-linkedin"></i></a>
      </div>
    </div>
  </footer><!-- End Footer -->


</asp:Content>
