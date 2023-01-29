<%@ Page Title="" Language="C#" MasterPageFile="~/Information_Forms.Master" AutoEventWireup="true" CodeBehind="Blood_requests_page.aspx.cs" Inherits="Blood_Bank_Project.Blood_requests_page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 90%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container mt-3" style="font-weight: bolder; text-transform: none; color: #C0C0C0; text-align:center; font-family: 'Times New Roman'; font-size: large;" >

    <table align="center" class="table table-info table-striped auto-style1" >
        <tr>
            <td>Name</td>
            <td>Email Address</td>
            <td>Blood group</td>
            <td>Date of requiest</td>
            <td>No.of bags</td>
            <td>price per bag</td>
            <td>status</td>
        </tr>
        <tr>
            <td>Verma Muna</td>
            <td>munnaverma8780@gmail.com</td>
            <td>B+</td>
            <td>7/1/2023</td>
            <td>2</td>
            <td>200</td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Accept" />
                <asp:Button ID="Button2" runat="server" Text="Reject" />
            </td>
        </tr>
        <tr>
            <td>Verma Muna</td>
            <td>munnaverma8780@gmail.com</td>
            <td>B+</td>
            <td>7/1/2023</td>
            <td>2</td>
            <td>200</td>
            <td>
                <asp:Button ID="Button3" runat="server" Text="Accept" />
                <asp:Button ID="Button4" runat="server" Text="Reject" />
            </td>
        </tr>
         </table>
</div>
</asp:Content>
