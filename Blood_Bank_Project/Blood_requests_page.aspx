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
            <td>Patient </td>
            <td><asp:TextBox ID="TextBox1" runat="server" Height="100%" Width="70%"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Photo</td>
            <td><asp:Image ID="Image1" runat="server" ImageAlign="Middle" Class="rounded mx-auto d-block" Height="200px" Width="200px" />
                                <br />
                                <asp:FileUpload ID="FileUpload1" runat="server" Width="60%" Height="60%" /></td>
        </tr>
        <tr>
            <td>Blood group id</td>
            <td><asp:TextBox ID="TextBox3" runat="server" Height="100%" Width="70%"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Address</td>
            <td><asp:TextBox ID="TextBox4" runat="server" Height="100%" Width="70%"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Region</td>
            <td><asp:DropDownList ID="DropDownList1" runat="server" Width="70%" Height="100%">
                            <asp:ListItem>East Region</asp:ListItem>
                            <asp:ListItem>West Region</asp:ListItem>
                            <asp:ListItem>South Region</asp:ListItem>
                            <asp:ListItem>North Region</asp:ListItem>
                        </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>City</td>
            <td><asp:DropDownList ID="DropDownList2" runat="server" Width="70%" Height="100%">
                            <asp:ListItem>Surat</asp:ListItem>
                            <asp:ListItem>Dwarka</asp:ListItem>
                            <asp:ListItem>Rajkot</asp:ListItem>
                            <asp:ListItem>Jamnagar</asp:ListItem>
                            <asp:ListItem>Kutch</asp:ListItem>
                        </asp:DropDownList></td>
        </tr>
        <tr>
            <td>Contact</td>
            <td><asp:TextBox ID="TextBox7" runat="server" Height="100%" Width="70%"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Email</td>
            <td><asp:TextBox ID="TextBox8" runat="server" Height="100%" Width="70%"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Age</td>
            <td><asp:TextBox ID="TextBox9" runat="server" Height="100%" Width="70%"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Remarks</td>
            <td>
                <asp:TextBox ID="TextBox10" runat="server" TextMode="MultiLine" Rows="10"></asp:TextBox>   
            </td>
        </tr>
    </table>
        <div class="m-4">
            <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="btn btn-primary" OnClick="Submit_Click" />
        </div>
</div>
</asp:Content>
