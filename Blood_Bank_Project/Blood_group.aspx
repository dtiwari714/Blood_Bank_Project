<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Blood_Group.aspx.cs" Inherits="Blood_Bank_Project.ViewBloodGroup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0-beta/css/bootstrap.min.css' rel='stylesheet' type='text/css'>
    <link href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Roboto' rel='stylesheet' type='text/css'>
    <style type="text/css">
        .auto-style1 {
            width: 60%;
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
    <div class="container">
        <div class="auto-style2" style="align-content:center;margin-top:24px;margin-bottom:24px">

        <table align="center" class="auto-style1">
            <tr>
                <td colspan="2" style="text-align:center; color: #FFFFFF; font-size:30px">Blood_Collection</td>
            </tr>
             <tr>
                <td><asp:Label ID="Label1" runat="server" Text="Blood Group Name:" class="form-control-label" ForeColor="White"></asp:Label></td>
                <td><asp:TextBox ID="TextBox1" runat="server" type="text" Class="form-control"></asp:TextBox></td>
            </tr>
            <tr>
                <td><asp:Label ID="Label2" runat="server" Text="Description:" class="form-control-label" ForeColor="White"></asp:Label></td>
                <td><asp:TextBox ID="TextBox2" runat="server" type="text" Class="form-control" TextMode="MultiLine" Rows="10"></asp:TextBox></td>
            </tr>
            <tr>
                <td><asp:Label ID="Label3" runat="server" Text="User ID:" class="form-control-label" ForeColor="White"></asp:Label></td>
                <td><asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="user_id" DataValueField="user_id" Height="100%" Width="100%"></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [user_id] FROM [tbl_user]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
                </td>
            </tr>
             </table>
    </div>
        </div>

        <footer id="footer" class="fixed-bottom">
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
