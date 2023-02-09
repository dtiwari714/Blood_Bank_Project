<%@ Page Title="" Language="C#" MasterPageFile="~/Information_Forms.Master" AutoEventWireup="true" Inherits="Blood_Bank_Project.Blood_group" Codebehind="View_Blood_group.aspx.cs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0-beta/css/bootstrap.min.css' rel='stylesheet' type='text/css'>
    <link href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Roboto' rel='stylesheet' type='text/css'>
    <style type="text/css">
       
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
<%--    <div class="container mt-3" style="font-weight: bolder; text-transform: none; color: #C0C0C0; text-align:center; font-family: 'Times New Roman'; font-size: large;" >
    <table align="center" class="table table-info table-striped auto-style1" >
        <tr>
            <td>Blood Group Name</td>
            <td><asp:TextBox ID="TextBox1" runat="server" Height="100%" Width="70%"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Description</td>
            <td><asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine" Rows="10"></asp:TextBox>
        </td>
    
    </table>
        <div class="m-4">
            <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
        </div>--%>

    <%--<table align="center" class="table table-info table-striped auto-style1" >
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
        
         </table>--%>
<%--</div>--%>

     <%--<div class="auto-style2" style="align-content:center;margin-top:24px;margin-bottom:24px">

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
    </div>--%>

    <div class="auto-style2" style="align-content:center;margin-top:24px;margin-bottom:24px">


        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="blood_group_id" DataSourceID="SqlDataSource1" Width="705px" >
            <Columns>
                <asp:BoundField DataField="blood_group_id" HeaderText="Blood_Group_ID" InsertVisible="False" ReadOnly="True" SortExpression="blood_group_id" />
                <asp:BoundField DataField="blood_group_name" HeaderText="Blood_Group_Name" SortExpression="blood_group_name" />
                <asp:BoundField DataField="description" HeaderText="Description" SortExpression="description" />
            </Columns>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [blood_group_id], [blood_group_name], [description] FROM [tbl_blood_group]"></asp:SqlDataSource>


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
