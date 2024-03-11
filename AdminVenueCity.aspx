<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AdminVenueCity.aspx.cs" Inherits="AdminVenueCity" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style1
    {
        width: 349px;
    }
    .style2
    {
        width: 210px;
    }
    .style3
    {
        width: 95px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="w-100">
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style1">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style2">
                <asp:Label ID="Label1" runat="server" Font-Size="Large" ForeColor="Black" 
                    Text="City"></asp:Label>
            </td>
            <td class="style1">
                <asp:TextBox ID="txtCity" runat="server" Height="25px" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtCity" Display="Dynamic" ErrorMessage="* Required Field" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style2">
                <asp:Label ID="Label2" runat="server" Font-Size="Large" ForeColor="Black" 
                    Text="District"></asp:Label>
            </td>
            <td class="style1">
                <asp:TextBox ID="txtDistrict" runat="server" Height="25px" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtDistrict" Display="Dynamic" 
                    ErrorMessage="* Required Field" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style1">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style1">
                <asp:Button ID="Button1" runat="server" Height="50px" onclick="Button1_Click" 
                    Text="SAVE" Width="100px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style1">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td colspan="3">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="City" DataSourceID="SqlDataSource1" 
                    EmptyDataText="There are no data records to display." CellPadding="4" 
                    ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="City" HeaderText="City" ReadOnly="True" 
                            SortExpression="City" />
                        <asp:BoundField DataField="District" HeaderText="District" 
                            SortExpression="District" />
                    </Columns>
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                    <SortedAscendingCellStyle BackColor="#FDF5AC" />
                    <SortedAscendingHeaderStyle BackColor="#4D0000" />
                    <SortedDescendingCellStyle BackColor="#FCF6C0" />
                    <SortedDescendingHeaderStyle BackColor="#820000" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:HallBookingDBConnectionString1 %>" 
                    DeleteCommand="DELETE FROM [VenueCityTBL] WHERE [City] = @City" 
                    InsertCommand="INSERT INTO [VenueCityTBL] ([City], [District]) VALUES (@City, @District)" 
                    ProviderName="<%$ ConnectionStrings:HallBookingDBConnectionString1.ProviderName %>" 
                    SelectCommand="SELECT [City], [District] FROM [VenueCityTBL]" 
                    UpdateCommand="UPDATE [VenueCityTBL] SET [District] = @District WHERE [City] = @City">
                    <DeleteParameters>
                        <asp:Parameter Name="City" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="City" Type="String" />
                        <asp:Parameter Name="District" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="District" Type="String" />
                        <asp:Parameter Name="City" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style1">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style1">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style1">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

