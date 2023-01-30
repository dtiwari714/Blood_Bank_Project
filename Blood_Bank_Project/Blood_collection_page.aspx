<%@ Page Title="" Language="C#" MasterPageFile="~/Information_Forms.Master" AutoEventWireup="true" CodeBehind="Blood_collection_page.aspx.cs" Inherits="Blood_Bank_Project.Blood_collection_page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 50%;
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <div class="container mt-3" style="font-weight: bolder; text-transform: none; color: #C0C0C0; text-align:center; font-family: 'Times New Roman'; font-size: large;" >

    <table align="center" class="table table-info table-striped auto-style1" >
        <tr>
            <td>Hospital Name</td>
            <td><asp:TextBox ID="TextBox1" runat="server" Height="100%" Width="70%"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Number of bags of Blood</td>
            <td><asp:TextBox ID="TextBox2" runat="server" Height="100%" Width="70%"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Collection Date:</td>
            <td><asp:TextBox ID="TextBox3" runat="server" Height="100%" Width="70%"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Nurse or Doctor Incharge</td>
            <td><asp:TextBox ID="TextBox4" runat="server" Height="100%" Width="70%"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Remarks</td>
            <td><asp:TextBox ID="TextBox5" runat="server" TextMode="MultiLine" Rows="10"></asp:TextBox></td>
        </tr>
    </table>

</div>
</asp:Content>
