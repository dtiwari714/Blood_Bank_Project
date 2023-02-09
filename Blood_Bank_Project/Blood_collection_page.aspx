 <%@ Page Title="" Language="C#" MasterPageFile="~/Information_Forms.Master" AutoEventWireup="true" Inherits="Blood_Bank_Project.Blood_collection_page" Codebehind="Blood_collection_page.aspx.cs" %>
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
   <%--<div class="container mt-3" style="font-weight: bolder; text-transform: none; color: #C0C0C0; text-align:center; font-family: 'Times New Roman'; font-size: large;" >

    <table align="center" class="table table-info table-striped auto-style1" >
        <tr>
            <td class="auto-style2">Hospital Name</td>
            <td><asp:TextBox ID="TextBox1" runat="server" Height="100%" Width="70%"></asp:TextBox></td>
        </tr>
        <tr>
            <td class="auto-style2">Number of bags of Blood</td>
            <td><asp:TextBox ID="TextBox2" runat="server" Height="100%" Width="70%"></asp:TextBox></td>            
        </tr>
        <tr>
            <td class="auto-style2">Collection Date:</td>
             <td class="auto-style4">
                        <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" Visible="False" Width="220px" OnSelectionChanged="Calendar1_SelectionChanged" SelectedDate="12/17/2022 00:56:07">
                            <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                            <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                            <OtherMonthDayStyle ForeColor="#999999" />
                            <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                            <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                            <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                            <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                            <WeekendDayStyle BackColor="#CCCCFF" />
                        </asp:Calendar>
                        <br />
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                        <br />
                        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" OnDataBinding="LinkButton1_Click">Select Date</asp:LinkButton>
                    </td>
        </tr>
        <tr>
            <td class="auto-style2">Nurse or Doctor Incharge</td>
            <td><asp:TextBox ID="TextBox4" runat="server" Height="100%" Width="70%"></asp:TextBox></td>
        </tr>
        <tr>
            <td class="auto-style2">Remarks</td>
            <td><asp:TextBox ID="TextBox5" runat="server" TextMode="MultiLine" Rows="10"></asp:TextBox></td>
        </tr>
    </table>
       <div>
           <asp:Button runat="server" Text="Submit" OnClick="Submit" />
       </div>
</div>--%>


     <div class="auto-style2" style="align-content:center;margin-top:24px;margin-bottom:24px">

        <table align="center" class="auto-style1">
            <tr>
                <td colspan="2" style="text-align:center; color: #FFFFFF; font-size:30px">Blood_Collection</td>
            </tr>
             <tr>
                <td><asp:Label ID="Label1" runat="server" Text="Hospital Name:" class="form-control-label" ForeColor="White"></asp:Label></td>
                <td><asp:TextBox ID="TextBox1" runat="server" type="text" Class="form-control"></asp:TextBox></td>
            </tr>
            <tr>
                <td><asp:Label ID="Label2" runat="server" Text="Donor ID:" class="form-control-label" ForeColor="White"></asp:Label></td>
                <td><asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="donor_id" DataValueField="donor_id" Height="100%" Width="100%">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [donor_id] FROM [tbl_donor]"></asp:SqlDataSource>
                </td>
            </tr>
             <tr>
                <td><asp:Label ID="Label6" runat="server" Text="Blood Group ID:" class="form-control-label" ForeColor="White"></asp:Label></td>
                <td>
                    <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="blood_group_id" DataValueField="blood_group_id" Height="100%" Width="100%">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [blood_group_id] FROM [tbl_blood_group]"></asp:SqlDataSource>
                 </td>
            </tr>
            <tr>
                <td><asp:Label ID="Label3" runat="server" Text="Collection Date:" class="form-control-label" ForeColor="White"></asp:Label></td>
                <td><asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" Visible="False" Width="220px" OnSelectionChanged="Calendar1_SelectionChanged" SelectedDate="12/17/2022 00:56:07">
                            <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                            <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                            <OtherMonthDayStyle ForeColor="#999999" />
                            <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                            <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                            <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                            <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                            <WeekendDayStyle BackColor="#CCCCFF" />
                        </asp:Calendar>
                        <br />
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                        <br />
                        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" OnDataBinding="LinkButton1_Click">Select Date</asp:LinkButton></td>
            </tr>
             <tr>
                <td><asp:Label ID="Label7" runat="server" Text="No. Of Bags" class="form-control-label" ForeColor="White"></asp:Label></td>
                <td><asp:TextBox ID="TextBox2" runat="server" type="text" Class="form-control"></asp:TextBox></td>
            </tr>
            <tr>
                <td><asp:Label ID="Label4" runat="server" Text="Nurse or Doctor Incharge" class="form-control-label" ForeColor="White"></asp:Label></td>
                <td><asp:TextBox ID="TextBox4" runat="server" type="text" Class="form-control"></asp:TextBox></td>
            </tr>
            <tr>
                <td><asp:Label ID="Label5" runat="server" Text="Remarks" class="form-control-label" ForeColor="White"></asp:Label></td>
                <td><asp:TextBox ID="TextBox5" runat="server" type="text" Class="form-control" TextMode="MultiLine" Rows="10"></asp:TextBox></td>
            </tr>
            <tr>
                <td><asp:Label ID="Label8" runat="server" Text="User Id:" class="form-control-label" ForeColor="White"></asp:Label></td>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [user_id] FROM [tbl_user]"></asp:SqlDataSource>
                    <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource3" DataTextField="user_id" DataValueField="user_id" Height="100%" Width="100%"></asp:DropDownList>
                 </td>
            </tr>
            <tr>
                <td colspan="2" style="text-align:center; color: #FFFFFF; font-size:45px">
                    <asp:Button ID="Button1" runat="server" Text="Submit" Class="btn btn-primary" OnClick="Submit" />
                </td>
            </tr>
             </table>

    </div>


    <%--<div class="auto-style2" style="align-content:center;margin-top:24px;margin-bottom:24px">

        <table align="center" class="auto-style1">
            <tr>
                <td colspan="2" style="text-align:center; color: #FFFFFF; font-size:30px">Blood_Collection</td>
            </tr>
             <tr>
                <td><asp:Label ID="Label1" runat="server" Text="Hospital Name:" class="form-control-label" ForeColor="White"></asp:Label></td>
                <td><asp:TextBox ID="TextBox1" runat="server" type="text" Class="form-control"></asp:TextBox></td>
            </tr>
            <tr>
                <td><asp:Label ID="Label2" runat="server" Text="Donor ID:" class="form-control-label" ForeColor="White"></asp:Label></td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="100%" Width="100%"></asp:DropDownList>
                </td>
            </tr>
             <tr>
                <td><asp:Label ID="Label6" runat="server" Text="Blood Group ID:" class="form-control-label" ForeColor="White"></asp:Label></td>
                <td>
                    <asp:DropDownList ID="DropDownList2" runat="server" Height="100%" Width="100%"></asp:DropDownList>
                 </td>
            </tr>
            <tr>
                <td><asp:Label ID="Label3" runat="server" Text="Collection Date:" class="form-control-label" ForeColor="White"></asp:Label></td>
                <td><asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" Visible="False" Width="220px" OnSelectionChanged="Calendar1_SelectionChanged" SelectedDate="12/17/2022 00:56:07">
                            <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                            <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                            <OtherMonthDayStyle ForeColor="#999999" />
                            <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                            <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                            <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                            <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                            <WeekendDayStyle BackColor="#CCCCFF" />
                        </asp:Calendar>
                        <br />
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                        <br />
                        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" OnDataBinding="LinkButton1_Click">Select Date</asp:LinkButton></td>
            </tr>
             <tr>
                <td><asp:Label ID="Label7" runat="server" Text="No. Of Bags" class="form-control-label" ForeColor="White"></asp:Label></td>
                <td><asp:TextBox ID="TextBox2" runat="server" type="text" Class="form-control"></asp:TextBox></td>
            </tr>
            <tr>
                <td><asp:Label ID="Label4" runat="server" Text="Nurse or Doctor Incharge" class="form-control-label" ForeColor="White"></asp:Label></td>
                <td><asp:TextBox ID="TextBox4" runat="server" type="text" Class="form-control"></asp:TextBox></td>
            </tr>
            <tr>
                <td><asp:Label ID="Label5" runat="server" Text="Remarks" class="form-control-label" ForeColor="White"></asp:Label></td>
                <td><asp:TextBox ID="TextBox5" runat="server" type="text" Class="form-control" TextMode="MultiLine" Rows="10"></asp:TextBox></td>
            </tr>
            <tr>
                <td><asp:Label ID="Label8" runat="server" Text="User Id:" class="form-control-label" ForeColor="White"></asp:Label></td>
                <td>
                    <asp:DropDownList ID="DropDownList3" runat="server" Height="100%" Width="100%"></asp:DropDownList>
                 </td>
            </tr>
            <tr>
                <td colspan="2" style="text-align:center; color: #FFFFFF; font-size:45px">
                    <asp:Button ID="Button1" runat="server" Text="Submit" Class="btn btn-primary" OnClick="Submit" />
                </td>
            </tr>
             </table>

    </div>--%>



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
