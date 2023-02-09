<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="ViewDonor.aspx.cs" Inherits="Blood_Bank_Project.ViewDonor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 100%;
            align-content:center;
            border-style: solid;
            border-width: 1px;
            margin-right: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container mb-3" style="font-family:'Times New Roman';font-size:25px;text-align:center">

        <table align="center" class="auto-style2">
            <tr>
                <td colspan="2">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="#CCCCFF" Text="Donor Information"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:GridView ID="GridView1" runat="server" HorizontalAlign="Center" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="donor_id" DataSourceID="SqlDataSource1" Width="966px">
                        <Columns>
                            <asp:BoundField DataField="donor_id" HeaderText="Donor_ID" InsertVisible="False" ReadOnly="True" SortExpression="donor_id" />
                            <asp:BoundField DataField="donor_name" HeaderText="Donor_Name" SortExpression="donor_name" />
                            <asp:TemplateField HeaderText="Donor_Photo" SortExpression="donor_photo">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("donor_photo") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <%--<asp:Label ID="Label1" runat="server" Text='<%# Bind("donor_photo") %>'></asp:Label>--%>
                                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("donor_photo") %>'/>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="blood_group_id" HeaderText="Blood_Group_Id" SortExpression="blood_group_id" />
                            <asp:BoundField DataField="contact" HeaderText="Contact" SortExpression="contact" />
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
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [donor_id], [donor_name], [donor_photo], [blood_group_id], [contact] FROM [tbl_donor]"></asp:SqlDataSource>
                </td>
            </tr>
        </table>
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
