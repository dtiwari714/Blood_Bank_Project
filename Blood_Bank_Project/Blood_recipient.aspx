<%@ Page Title="" Language="C#" MasterPageFile="~/Information_Forms.Master" AutoEventWireup="true" Inherits="Blood_Bank_Project.Blood_receiver" Codebehind="Blood_recipient.aspx.cs" %>
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
    <div class="auto-style2" style="align-content:center;margin-top:24px;margin-bottom:24px">

        <table align="center" class="auto-style1">
        <tr>
                <td colspan="2" style="text-align:center; color: #FFFFFF; font-size:30px">Patient Submit</td>
            </tr>
        <tr>
            <td><asp:Label ID="Label1" runat="server" Text="Recipient or Patient Name:" class="form-control-label" ForeColor="White"></asp:Label></td>
            <td><asp:TextBox ID="TextBox1" runat="server" type="text" Class="form-control"></asp:TextBox></td>
        </tr>
        <tr>
            <td><asp:Label ID="Label2" runat="server" Text="Recipient photo:" class="form-control-label" ForeColor="White"></asp:Label></td>
             <td><asp:Image ID="Image1" runat="server" ImageAlign="Middle" Class="rounded mx-auto d-block" Height="200px" Width="200px" />
                 <asp:FileUpload ID="FileUpload1" runat="server" Width="60%" Height="60%" /></td>
        </tr>
         <tr>
            <td><asp:Label ID="Label10" runat="server" Text="Blood Group Id:" class="form-control-label" ForeColor="White"></asp:Label></td>
           <td>
               <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" DataTextField="blood_group_id" DataValueField="blood_group_id" Height="100%" Width="100%"></asp:DropDownList>
               <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [blood_group_id] FROM [tbl_blood_group]"></asp:SqlDataSource>
           </td>
        </tr>
        <tr>
            <td><asp:Label ID="Label3" runat="server" Text="Complete Address:" class="form-control-label" ForeColor="White"></asp:Label></td>
           <td><asp:TextBox ID="TextBox2" runat="server" type="text" Class="form-control"></asp:TextBox></td>
        </tr>
        <tr>
            <td><asp:Label ID="Label4" runat="server" Text="Region:" class="form-control-label" ForeColor="White"></asp:Label></td>
            <td><asp:DropDownList ID="DropDownList1" runat="server" Width="70%" Height="100%">
                            <asp:ListItem>East Region</asp:ListItem>
                            <asp:ListItem>West REgion</asp:ListItem>
                            <asp:ListItem>South Region</asp:ListItem>
                            <asp:ListItem>North Region</asp:ListItem>
                        </asp:DropDownList></td>
        </tr>
        <tr>
            <td><asp:Label ID="Label5" runat="server" Text="City:" class="form-control-label" ForeColor="White"></asp:Label></td>
            <td><asp:DropDownList ID="DropDownList3" runat="server" Width="70%" Height="100%">
                            <asp:ListItem>Surat</asp:ListItem>
                            <asp:ListItem>Rajkot</asp:ListItem>
                            <asp:ListItem>Jamnagar</asp:ListItem>
                            <asp:ListItem>Dwarka</asp:ListItem>
                        </asp:DropDownList></td>
        </tr>
        <tr>
            <td><asp:Label ID="Label6" runat="server" Text="Contact:" class="form-control-label" ForeColor="White"></asp:Label></td>
            <td><asp:TextBox ID="TextBox5" runat="server" type="text" Class="form-control"></asp:TextBox></td>
        </tr>
        <tr>
            <td><asp:Label ID="Label7" runat="server" Text="Email Address:" class="form-control-label" ForeColor="White"></asp:Label></td>
           <td>
               <asp:TextBox ID="TextBox6" runat="server" type="text" Class="form-control"></asp:TextBox></td>
        </tr>
         <tr>
             <td><asp:Label ID="Label8" runat="server" Text="Age:" class="form-control-label" ForeColor="White"></asp:Label></td>
            <td><asp:TextBox ID="TextBox3" runat="server" type="text" Class="form-control"></asp:TextBox></td>
        </tr>
        <tr>
             <td><asp:Label ID="Label9" runat="server" Text="Remarks:" class="form-control-label" ForeColor="White"></asp:Label></td>
            <td><asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine" Rows="10" type="text" Class="form-control" ></asp:TextBox></td>
        </tr>
             <tr>
            <td><asp:Label ID="Label11" runat="server" Text="User Id:" class="form-control-label" ForeColor="White"></asp:Label></td>
           <td>
               <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [user_id] FROM [tbl_user]"></asp:SqlDataSource>
               <asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="SqlDataSource2" DataTextField="user_id" DataValueField="user_id" Height="100%" Width="100%"></asp:DropDownList>
           </td>
        </tr>
        <tr>
             <td colspan="2">
                 <asp:Button ID="Button2" runat="server" Text="Submit" OnClick="Submit_Click" />
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
