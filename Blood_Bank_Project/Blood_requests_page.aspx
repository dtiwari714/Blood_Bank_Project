<%@ Page Title="" Language="C#" MasterPageFile="~/Information_Forms.Master" AutoEventWireup="true" Inherits="Blood_Bank_Project.Blood_requests_page" Codebehind="Blood_requests_page.aspx.cs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 45%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container mt-3" style="font-weight: bolder; text-transform: none; color: #C0C0C0; text-align:center; font-family: 'Times New Roman'; font-size: large;" >

    <table align="center" class="table table-info table-striped auto-style1" >
        <tr>
            <td>Date of Request</td>
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
            <td>Blood Group</td>
            <td><asp:TextBox ID="TextBox1" runat="server" Height="100%" Width="70%"></asp:TextBox></td>
        </tr>
        <tr>
            <td>No. Of Bags</td>
            <td><asp:DropDownList ID="DropDownList1" runat="server" Width="70%" Height="100%">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                        </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>Amount Of Blood</td>
            <td><asp:DropDownList ID="DropDownList2" runat="server" Width="70%" Height="100%">
                            <asp:ListItem>100mg</asp:ListItem>
                            <asp:ListItem>200mg</asp:ListItem>
                            <asp:ListItem>300mg</asp:ListItem>
                            <asp:ListItem>400mg</asp:ListItem>
                            <asp:ListItem>500mg</asp:ListItem>
                        </asp:DropDownList></td>
        </tr>
        <tr>
            <td>Purpose</td>
            <td><asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine" Rows="10"></asp:TextBox>   
            </td>
        </tr>
        <tr>
            <td>Request Status</td>
            <td><asp:DropDownList ID="DropDownList3" runat="server" Width="70%" Height="100%">
                            <asp:ListItem>Accepted</asp:ListItem>
                            <asp:ListItem>Not Accepted</asp:ListItem>
                        </asp:DropDownList></td>
        </tr>
        <tr>
            <td>Remarks</td>
            <td>
                <asp:TextBox ID="TextBox10" runat="server" TextMode="MultiLine" Rows="10"></asp:TextBox>   
            </td>
        </tr>
    </table>
        <div class="m-4">
            <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click"/>
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
