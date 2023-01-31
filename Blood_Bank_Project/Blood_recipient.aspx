<%@ Page Title="" Language="C#" MasterPageFile="~/Information_Forms.Master" AutoEventWireup="true" Inherits="Blood_Bank_Project.Blood_receiver" Codebehind="Blood_recipient.aspx.cs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 50%;
        }
        .auto-style2 {
            width: 237px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container mt-3" style="font-weight: bolder; text-transform: none; color: #C0C0C0; text-align:center; font-family: 'Times New Roman'; font-size: large;" >

    <table align="center" class="table table-info table-striped auto-style1" >
        <tr>
            <td>Recipient or Patient Name</td>
            <td><asp:TextBox ID="TextBox1" runat="server" Height="100%" Width="70%"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Recipient photo</td>
             <td><asp:Image ID="Image1" runat="server" ImageAlign="Middle" Class="rounded mx-auto d-block" Height="200px" Width="200px" />
                 <asp:FileUpload ID="FileUpload1" runat="server" Width="60%" Height="60%" /></td>
        </tr>
        <tr>
            <td>Complete Address</td>
           <td><asp:TextBox ID="TextBox2" runat="server" Height="100%" Width="70%"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Region</td>
            <td><asp:DropDownList ID="DropDownList1" runat="server" Width="70%" Height="100%">
                            <asp:ListItem>East Region</asp:ListItem>
                            <asp:ListItem>West REgion</asp:ListItem>
                            <asp:ListItem>South Region</asp:ListItem>
                            <asp:ListItem>North Region</asp:ListItem>
                        </asp:DropDownList></td>
        </tr>
        <tr>
            <td>City</td>
            <td><asp:DropDownList ID="DropDownList3" runat="server" Width="70%" Height="100%">
                            <asp:ListItem>Surat</asp:ListItem>
                            <asp:ListItem>Rajkot</asp:ListItem>
                            <asp:ListItem>Jamnagar</asp:ListItem>
                            <asp:ListItem>Dwarka</asp:ListItem>
                        </asp:DropDownList></td>
        </tr>
        <tr>
            <td>Contact</td>
            <td><asp:TextBox ID="TextBox5" runat="server" Height="100%" Width="70%"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Email Address</td>
           <td>
               <asp:TextBox ID="TextBox6" runat="server" Height="100%" Width="70%"></asp:TextBox></td>
        </tr>
         <tr>
            <td>Age</td>
            <td><asp:TextBox ID="TextBox3" runat="server" Height="100%" Width="70%"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Remarks</td>
            <td><asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine" Rows="10" ></asp:TextBox></td>
        </tr>
    </table>
        <div class="m-4">
            <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Submit_Click" />
        </div>
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
