<%@ Page Title="" Language="C#" MasterPageFile="~/Information_Forms.Master" AutoEventWireup="true" CodeBehind="Blood_group.aspx.cs" Inherits="Blood_Bank_Project.Blood_group" %>
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
            <td>Blood Group Name</td>
            <td>Receive Blood From</td>
            <td>Donate Blood To</td>
        </tr>
        <tr>
            <td>A+</td>
            <td  style="font-size :medium";>	A+, A-, O+ and O-</td>
            <td  style="font-size :medium ";>		A+ and AB+</td>
        </tr>
        <tr>
            <td>B+</td>
            <td  style="font-size :medium ";>	B+, B-, O+ and O--</td>
            <td  style="font-size :medium ";>B+ and AB+</td>
        </tr><tr>
            <td>AB+</td>
            <td  style="font-size :medium ";>All blood types</td>
            <td  style="font-size :medium ";>AB+ only</td>
        </tr><tr>
            <td>O+</td>
            <td  style="font-size :medium ";>O+ and O-</td>
            <td  style="font-size :medium ";>O+, A+, B+ and AB+</td>
        </tr><tr>
            <td>A-</td>
            <td  style="font-size :medium ";>A- and O-</td>
            <td  style="font-size :medium ";>A+, A-, AB+ and AB-</td>
        </tr><tr>
            <td>O-</td>
            <td  style="font-size :medium ";>O- only</td>
            <td  style="font-size :medium ";>All blood types</td>
        </tr><tr>
            <td>B-</td>
            <td  style="font-size :medium ";>B- and O-</td>
            <td  style="font-size :medium ";>B+, B-, AB+ and AB-</td>
        </tr><tr>
            <td>AB-</td>
            <td  style="font-size :medium ";>AB-, A-, B- and O-</td>
            <td  style="font-size :medium ";>AB+ and AB-</td>
        </tr>
        
         </table>
</div>
</asp:Content>
