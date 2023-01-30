<%@ Page Title="" Language="C#" MasterPageFile="~/Information_Forms.Master" AutoEventWireup="true" CodeBehind="Blood_recipient.aspx.cs" Inherits="Blood_Bank_Project.Blood_receiver" %>
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
            <td>Date of Request</td>
            <td><asp:TextBox ID="TextBox1" runat="server" Height="100%" Width="70%"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Blood Group</td>
            <td><asp:TextBox ID="TextBox2" runat="server" Height="100%" Width="70%"></asp:TextBox></td>
        </tr>
        <tr>
            <td>No.of bags</td>
            <td><asp:DropDownList ID="DropDownList3" runat="server" Width="70%" Height="100%">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                        </asp:DropDownList></td>
        </tr>
        <tr>
            <td>Amount of Bags</td>
            <td><asp:DropDownList ID="DropDownList1" runat="server" Width="70%" Height="100%">
                            <asp:ListItem>100</asp:ListItem>
                            <asp:ListItem>200</asp:ListItem>
                            <asp:ListItem>300</asp:ListItem>
                            <asp:ListItem>400</asp:ListItem>
                        </asp:DropDownList></td>
        </tr>
        <tr>
            <td>Purpose</td>
            <td><asp:TextBox ID="TextBox5" runat="server" TextMode="MultiLine" Rows="10" ></asp:TextBox></td>

        </tr>
        <tr>
            <td>Request_status</td>
            <td><asp:DropDownList ID="DropDownList2" runat="server" Width="70%" Height="100%">
                            <asp:ListItem>Accepted</asp:ListItem>
                            <asp:ListItem>Not Accepted</asp:ListItem>
                        </asp:DropDownList></td>
        </tr>
        <tr>
            <td>Remarks</td>
            <td><asp:TextBox ID="TextBox7" runat="server" TextMode="MultiLine" Rows="10"></asp:TextBox></td>
        </tr>
    </table>
        <div class="m-4">
            <asp:Button ID="Button1" runat="server" Text="Submit" />
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
