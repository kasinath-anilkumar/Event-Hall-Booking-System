<%@ Page Title="" Language="C#" MasterPageFile="~/CustomerMasterPage.master" AutoEventWireup="true" CodeFile="CustomerHallView.aspx.cs" Inherits="CustomerHallView" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 124px;
        }
        .style2
        {
            width: 381px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="w-100">
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="6">
            <asp:Panel ID="Panel1" runat="server">
                <table class="w-100">
                    <tr>
                        <td>
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
                        <td>
                            &nbsp;</td>
                        <td>
                            <asp:Label ID="Label1" runat="server" Font-Size="Large" ForeColor="Black" 
                                Text="Name"></asp:Label>
                            :&nbsp;&nbsp;
                            <asp:Label ID="lblName" runat="server" Font-Size="Large" ForeColor="#0000CC"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="Label3" runat="server" Font-Size="Large" ForeColor="Black" 
                                Text="Mobile"></asp:Label>
                            :&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="lblMobileNum" runat="server" Font-Size="Large" 
                                ForeColor="#0000CC"></asp:Label>
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
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
            <td class="style1">
                &nbsp;</td>
            <td class="style2">
                            <asp:Label ID="Label4" runat="server" Font-Size="Large" ForeColor="Black" 
                                Text="Selected Hall ID"></asp:Label>
                            :&nbsp;&nbsp;
                            <asp:Label ID="lblHallID" runat="server" Font-Size="Large" 
                    ForeColor="#0000CC"></asp:Label>
                        </td>
            <td colspan="3">
                            &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td colspan="5">
                <asp:DataList ID="DataList1" runat="server" CellPadding="4" DataKeyField="Hall" 
                    DataSourceID="SqlDataSource1" ForeColor="#333333">
                    <AlternatingItemStyle BackColor="White" ForeColor="#284775" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <ItemStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <ItemTemplate>
                        City:
                        <asp:Label ID="CityLabel" runat="server" Text='<%# Eval("City") %>' />
                        <br />
                        Hall:
                        <asp:Label ID="HallLabel" runat="server" Text='<%# Eval("Hall") %>' />
                        <br />
                        Address:
                        <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
                        <br />
                        Capacity:
                        <asp:Label ID="CapacityLabel" runat="server" Text='<%# Eval("Capacity") %>' />
                        <br />
                        Parking:
                        <asp:Label ID="ParkingLabel" runat="server" Text='<%# Eval("Parking") %>' />
                        <br />
                        Timing:
                        <asp:Label ID="TimingLabel" runat="server" Text='<%# Eval("Timing") %>' />
                        <br />
                        Hall Type:
                        <asp:Label ID="HallTypeLabel" runat="server" Text='<%# Eval("HallType") %>' />
                        <br />
                        Outside Food:
                        <asp:Label ID="OutsideFoodLabel" runat="server" 
                            Text='<%# Eval("OutsideFood") %>' />
                        <br />
                        Outside Decor:
                        <asp:Label ID="OutsideDecorLabel" runat="server" 
                            Text='<%# Eval("OutsideDecor") %>' />
                        <br />
                        Policies:
                        <asp:Label ID="PoliciesLabel" runat="server" Text='<%# Eval("Policies") %>' />
                        <br />
                        Rent:
                        <asp:Label ID="RentLabel" runat="server" Text='<%# Eval("Rent") %>' />
                        <br />
                        <table class="w-100">
                            <tr>
                                <td>
                                    <asp:Image ID="Image1" runat="server" Height="250px" 
                                        ImageUrl='<%# Eval("HallImage1") %>' Width="250px" />
                                </td>
                                <td>
                                    <asp:Image ID="Image2" runat="server" Height="250px" 
                                        ImageUrl='<%# Eval("HallImage2") %>' Width="250px" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Image ID="Image3" runat="server" Height="250px" 
                                        ImageUrl='<%# Eval("HallImage3") %>' Width="250px" />
                                </td>
                                <td>
                                    <asp:Image ID="Image4" runat="server" Height="250px" 
                                        ImageUrl='<%# Eval("HallImage4") %>' Width="250px" />
                                </td>
                            </tr>
                        </table>
<br />
                    </ItemTemplate>
                    <SelectedItemStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:HallBookingDBConnectionString1 %>" 
                    SelectCommand="SELECT [City], [Hall], [Address], [Capacity], [Parking], [Timing], [HallType], [OutsideFood], [OutsideDecor], [Policies], [Rent], [HallImage1], [HallImage2], [HallImage3], [HallImage4] FROM [HallTBL] WHERE ([HallNum] = @HallNum)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="lblHallID" Name="HallNum" PropertyName="Text" 
                            Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td colspan="5">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td colspan="2">
                <asp:Button ID="Button1" runat="server" Height="50px" Text="BOOK NOW" 
                    onclick="Button1_Click" />
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td colspan="2">
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

