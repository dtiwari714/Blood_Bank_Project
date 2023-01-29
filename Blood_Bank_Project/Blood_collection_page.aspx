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
            <td>Blood type</td>
            <td>Hospital</td>
            <td>No. of Bags</td>
            <td>Date of collection</td>

        </tr>
        <tr>
            <td  style="font-size :medium";>A+</td>
            <td  style="font-size :medium ";>Sarthi Hospital</td>
            <td  style="font-size :medium ";> 2 </td>
            <td  style="font-size :medium ";>7/5/2022</td>

        </tr>
        </table>
        </div>
</asp:Content>
