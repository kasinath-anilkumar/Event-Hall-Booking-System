<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AdminHome.aspx.cs" Inherits="AdminHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
        }
        .style3
        {
            width: 258px;
        }
        .style4
        {
            height: 19px;
        }
        .style5
        {
            width: 269px;
            height: 19px;
        }
        .style9
        {
            width: 279px;
        }
        .style10
        {
            width: 279px;
            height: 19px;
        }
        .style11
        {
            height: 19px;
            width: 424px;
        }
        .style12
        {
            width: 424px;
        }
        .style13
        {
            width: 416px;
        }
        .style14
        {
            width: 416px;
            height: 19px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="w-100">
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style14">
                &nbsp;</td>
            <td class="style5">
                <asp:Label ID="Label1" runat="server" Font-Size="Large" Text="Name"></asp:Label>
                            <asp:Label ID="lblName" runat="server" Font-Size="Large" 
                    ForeColor="#0000CC"></asp:Label>
                        </td>
            <td class="style10">
                </td>
            <td class="style11">
                <asp:Label ID="Label2" runat="server" Font-Size="Large" Text="Mobile No"></asp:Label>
                            <asp:Label ID="lblMobileNum" runat="server" Font-Size="Large" 
                                ForeColor="#0000CC"></asp:Label>
            </td>
            <td class="style4">
            </td>
        </tr>
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td class="style2" colspan="3" rowspan="4">
                <asp:DataList ID="DataList1" runat="server" CellPadding="4" 
                DataSourceID="SqlDataSource1" ForeColor="#333333">
                <AlternatingItemStyle BackColor="White" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <ItemStyle BackColor="#EFF3FB" />
                <ItemTemplate>
                    Gender:
                    <asp:Label ID="GenderLabel" runat="server" Text='<%# Eval("Gender") %>' />
                    <br />
                    Date of Birth:
                    <asp:Label ID="DateofBirthLabel" runat="server" 
                        Text='<%# Eval("DateofBirth") %>' />
                    <br />
                    Address:
                    <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
                    <br />
                    Email ID:
                    <asp:Label ID="EmailIDLabel" runat="server" Text='<%# Eval("EmailID") %>' />
                    <br />
                    ID Proof:
                    <br />
                    <asp:Image ID="Image1" runat="server" Height="300px" 
                        ImageUrl='<%# Eval("IDProof") %>' Width="300px" />
                    <br />
<br />
                </ItemTemplate>
                <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:HallBookingDBConnectionString1 %>" 
                    SelectCommand="SELECT [Gender], [DateofBirth], [Address], [EmailID], [IDProof] FROM [CustomerTBL] WHERE ([MobileNum] = @MobileNum)">
                    <SelectParameters>
                        <asp:Parameter Name="MobileNum" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td class="style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td class="style2">
                <asp:LinkButton ID="LinkButton1" runat="server" Font-Size="Medium" 
                    ForeColor="#0000CC" onclick="LinkButton1_Click">Click Here for Change Passsword</asp:LinkButton>
            </td>
            <td class="style9">
                &nbsp;</td>
            <td class="style12">
                <asp:LinkButton ID="LinkButton2" runat="server" Font-Bold="True" 
                    Font-Size="Large" ForeColor="#0000CC" onclick="LinkButton1_Click">Click Here to View Halls</asp:LinkButton>
            </td>
            <td class="style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

