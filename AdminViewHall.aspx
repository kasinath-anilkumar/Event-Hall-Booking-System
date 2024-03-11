<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AdminViewHall.aspx.cs" Inherits="AdminViewHall" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 235px;
        }
        .style3
        {
            width: 94px;
        }
        .style4
    {
        height: 27px;
    }
    .style5
    {}
    .style6
    {
        height: 27px;
        width: 298px;
    }
    .style7
    {
        width: 80px;
    }
    .style8
    {
        width: 236px;
    }
    .style9
    {
        width: 194px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="w-100">
        <tr>
            <td>
                &nbsp;</td>
            <td class="style1">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style1">
                <asp:Label ID="Label2" runat="server" Font-Size="Large" ForeColor="Black" 
                    Text="Select Hall Number"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddlHallNum" runat="server" DataSourceID="SqlDataSource1" 
                    DataTextField="HallNum" DataValueField="HallNum" Height="25px" 
                    Width="200px" Font-Size="Large" ontextchanged="ddlHallNum_TextChanged">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:HallBookingDBConnectionString1 %>" 
                    SelectCommand="SELECT [HallNum] FROM [HallTBL]"></asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style1">
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Height="50px" onclick="Button1_Click" 
                    Text="VIEW HALL DETAILS" />
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style1">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="5">
                <asp:Panel ID="Panel1" runat="server" Visible="False">
                    <table class="w-100">
                        <tr>
                            <td class="style3">
                                <asp:Label ID="lblHallNum" runat="server" Visible="False"></asp:Label>
                            </td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style3">
                                &nbsp;</td>
                            <td colspan="4">
                                <asp:DataList ID="DataList1" runat="server" CellPadding="4" DataKeyField="Hall" 
                                    DataSourceID="SqlDataSource2" ForeColor="#333333" Font-Size="Large">
                                    <AlternatingItemStyle BackColor="White" />
                                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                    <ItemStyle BackColor="#FFFBD6" ForeColor="#333333" />
                                    <ItemTemplate>
                                        <table class="w-100">
                                            <tr>
                                                <td class="style5">
                                                    <asp:Image ID="Image1" runat="server" Height="300px" 
                                                        ImageUrl='<%# Eval("HallImage1") %>' Width="300px" />
                                                </td>
                                                <td>
                                                    <asp:Image ID="Image2" runat="server" Height="300px" 
                                                        ImageUrl='<%# Eval("HallImage2") %>' Width="300px" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style5">
                                                    &nbsp;</td>
                                                <td>
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td class="style5">
                                                    <asp:Image ID="Image3" runat="server" Height="300px" 
                                                        ImageUrl='<%# Eval("HallImage3") %>' Width="300px" />
                                                </td>
                                                <td>
                                                    <asp:Image ID="Image4" runat="server" Height="300px" 
                                                        ImageUrl='<%# Eval("HallImage4") %>' Width="300px" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style6">
                                                </td>
                                                <td class="style4">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style5" colspan="2">
                                                    <table class="w-100">
                                                        <tr>
                                                            <td class="style7">
                                                                &nbsp;</td>
                                                            <td class="style9">
                                                                Hall:
                                                            </td>
                                                            <td class="style8">
                                                                <asp:Label ID="HallLabel" runat="server" Text='<%# Eval("Hall") %>' />
                                                            </td>
                                                            <td>
                                                                &nbsp;</td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style7">
                                                                &nbsp;</td>
                                                            <td class="style9">
                                                                &nbsp;</td>
                                                            <td class="style8">
                                                                &nbsp;</td>
                                                            <td>
                                                                &nbsp;</td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style7">
                                                                &nbsp;</td>
                                                            <td class="style9">
                                                                City:</td>
                                                            <td class="style8">
                                                                <asp:Label ID="CityLabel" runat="server" Text='<%# Eval("City") %>' />
                                                            </td>
                                                            <td>
                                                                &nbsp;</td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style7">
                                                                &nbsp;</td>
                                                            <td class="style9">
                                                                &nbsp;</td>
                                                            <td class="style8">
                                                                &nbsp;</td>
                                                            <td>
                                                                &nbsp;</td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style7">
                                                                &nbsp;</td>
                                                            <td class="style9">
                                                                Address:</td>
                                                            <td class="style8">
                                                                <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
                                                            </td>
                                                            <td>
                                                                &nbsp;</td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style7">
                                                                &nbsp;</td>
                                                            <td class="style9">
                                                                &nbsp;</td>
                                                            <td class="style8">
                                                                &nbsp;</td>
                                                            <td>
                                                                &nbsp;</td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style7">
                                                                &nbsp;</td>
                                                            <td class="style9">
                                                                Capacity</td>
                                                            <td class="style8">
                                                                <asp:Label ID="CapacityLabel" runat="server" Text='<%# Eval("Capacity") %>' />
                                                            </td>
                                                            <td>
                                                                &nbsp;</td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style7">
                                                                &nbsp;</td>
                                                            <td class="style9">
                                                                &nbsp;</td>
                                                            <td class="style8">
                                                                &nbsp;</td>
                                                            <td>
                                                                &nbsp;</td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style7">
                                                                &nbsp;</td>
                                                            <td class="style9">
                                                                Parking:</td>
                                                            <td class="style8">
                                                                <asp:Label ID="ParkingLabel" runat="server" Text='<%# Eval("Parking") %>' />
                                                            </td>
                                                            <td>
                                                                &nbsp;</td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style7">
                                                                &nbsp;</td>
                                                            <td class="style9">
                                                                &nbsp;</td>
                                                            <td class="style8">
                                                                &nbsp;</td>
                                                            <td>
                                                                &nbsp;</td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style7">
                                                                &nbsp;</td>
                                                            <td class="style9">
                                                                Timing:
                                                            </td>
                                                            <td class="style8">
                                                                <asp:Label ID="TimingLabel" runat="server" Text='<%# Eval("Timing") %>' />
                                                            </td>
                                                            <td>
                                                                &nbsp;</td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style7">
                                                                &nbsp;</td>
                                                            <td class="style9">
                                                                &nbsp;</td>
                                                            <td class="style8">
                                                                &nbsp;</td>
                                                            <td>
                                                                &nbsp;</td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style7">
                                                                &nbsp;</td>
                                                            <td class="style9">
                                                                HallType:
                                                            </td>
                                                            <td class="style8">
                                                                <asp:Label ID="HallTypeLabel" runat="server" Text='<%# Eval("HallType") %>' />
                                                            </td>
                                                            <td>
                                                                &nbsp;</td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style7">
                                                                &nbsp;</td>
                                                            <td class="style9">
                                                                &nbsp;</td>
                                                            <td class="style8">
                                                                &nbsp;</td>
                                                            <td>
                                                                &nbsp;</td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style7">
                                                                &nbsp;</td>
                                                            <td class="style9">
                                                                OutsideFood:
                                                            </td>
                                                            <td class="style8">
                                                                <asp:Label ID="OutsideFoodLabel" runat="server" 
                                                                    Text='<%# Eval("OutsideFood") %>' />
                                                            </td>
                                                            <td>
                                                                &nbsp;</td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style7">
                                                                &nbsp;</td>
                                                            <td class="style9">
                                                                &nbsp;</td>
                                                            <td class="style8">
                                                                &nbsp;</td>
                                                            <td>
                                                                &nbsp;</td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style7">
                                                                &nbsp;</td>
                                                            <td class="style9">
                                                                OutsideDecor:
                                                            </td>
                                                            <td class="style8">
                                                                <asp:Label ID="OutsideDecorLabel" runat="server" 
                                                                    Text='<%# Eval("OutsideDecor") %>' />
                                                            </td>
                                                            <td>
                                                                &nbsp;</td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style7">
                                                                &nbsp;</td>
                                                            <td class="style9">
                                                                &nbsp;</td>
                                                            <td class="style8">
                                                                &nbsp;</td>
                                                            <td>
                                                                &nbsp;</td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style7">
                                                                &nbsp;</td>
                                                            <td class="style9">
                                                                Policies:
                                                            </td>
                                                            <td class="style8">
                                                                <asp:Label ID="PoliciesLabel" runat="server" Text='<%# Eval("Policies") %>' />
                                                            </td>
                                                            <td>
                                                                &nbsp;</td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style7">
                                                                &nbsp;</td>
                                                            <td class="style9">
                                                                &nbsp;</td>
                                                            <td class="style8">
                                                                &nbsp;</td>
                                                            <td>
                                                                &nbsp;</td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style7">
                                                                &nbsp;</td>
                                                            <td class="style9">
                                                                Rent:
                                                            </td>
                                                            <td class="style8">
                                                                <asp:Label ID="RentLabel" runat="server" Text='<%# Eval("Rent") %>' />
                                                            </td>
                                                            <td>
                                                                &nbsp;</td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style7">
                                                                &nbsp;</td>
                                                            <td class="style9">
                                                                &nbsp;</td>
                                                            <td class="style8">
                                                                &nbsp;</td>
                                                            <td>
                                                                &nbsp;</td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style5">
                                                    &nbsp;</td>
                                                <td>
                                                    &nbsp;</td>
                                            </tr>
                                        </table>
                                    </ItemTemplate>
                                    <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                                </asp:DataList>
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:HallBookingDBConnectionString1 %>" 
                                    
                                    SelectCommand="SELECT [Hall], [City], [Address], [Capacity], [Parking], [Timing], [HallType], [OutsideFood], [OutsideDecor], [Policies], [Rent], [HallImage1], [HallImage2], [HallImage3], [HallImage4] FROM [HallTBL] WHERE ([HallNum] = @HallNum)">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="lblHallNum" Name="HallNum" PropertyName="Text" 
                                            Type="Int32" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                            </td>
                        </tr>
                        <tr>
                            <td class="style3">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style3">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style1">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style1">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style1">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style1">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style1">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

