<%@ Page Title="" Language="C#" MasterPageFile="~/CustomerMasterPage.master" AutoEventWireup="true" CodeFile="CustomerSearch.aspx.cs" Inherits="CustomerSearch" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 340px;
        }
        .style2
        {
            width: 127px;
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
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="5">
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
            <td>
                &nbsp;</td>
            <td class="style1">
                &nbsp;</td>
            <td class="style2">
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
                            <asp:Label ID="Label4" runat="server" Font-Size="Large" ForeColor="Black" 
                                Text="Select City"></asp:Label>
                            </td>
            <td class="style2">
                <asp:DropDownList ID="ddlCity" runat="server" DataSourceID="SqlDataSource1" 
                    DataTextField="City" DataValueField="City" Height="25px" Width="200px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:HallBookingDBConnectionString1 %>" 
                    SelectCommand="SELECT distinct [City] FROM [HallTBL]"></asp:SqlDataSource>
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
            <td class="style2">
                <asp:Label ID="lblCity" runat="server" Visible="False"></asp:Label>
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
            <td class="style2">
                <asp:Button ID="Button1" runat="server" Height="50px" onclick="Button1_Click" 
                    Text="SEARCH HALL" />
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                </td>
            <td class="style1">
                </td>
            <td class="style2">
                </td>
            <td>
                </td>
            <td>
                </td>
        </tr>
        <tr>
            <td colspan="5">
                <asp:Panel ID="Panel2" runat="server" Visible="False">
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
                            <td colspan="4">
                                <asp:DataList ID="DataList1" runat="server" CellPadding="4" DataKeyField="Hall" 
                                    DataSourceID="SqlDataSource2" ForeColor="#333333" 
                                    onitemcommand="DataList1_ItemCommand">
                                    <AlternatingItemStyle BackColor="White" />
                                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                    <ItemStyle BackColor="#E3EAEB" />
                                    <ItemTemplate>
                                        <asp:Image ID="Image3" runat="server" Height="250px" 
                                            ImageUrl='<%# Eval("HallImage1") %>' Width="250px" />
                                        <br />
                                        Hall Num:
                                        <asp:Label ID="HallNumLabel" runat="server" Text='<%# Eval("HallNum") %>' />
                                        <br />
                                        Hall:
                                        <asp:Label ID="HallLabel" runat="server" Text='<%# Eval("Hall") %>' />
                                        <br />
                                        Capacity:
                                        <asp:Label ID="CapacityLabel" runat="server" Text='<%# Eval("Capacity") %>' />
                                        <br />
                                        Hall Type:
                                        <asp:Label ID="HallTypeLabel" runat="server" Text='<%# Eval("HallType") %>' />
                                        <br />
                                        <asp:LinkButton ID="LinkButton1" runat="server" 
                                            CommandArgument='<%# Eval("HallNum") %>' Font-Size="Large" ForeColor="#0000CC">VIEW</asp:LinkButton>
                                        <br />
                                        <br />
                                    </ItemTemplate>
                                    <SelectedItemStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                                </asp:DataList>
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:HallBookingDBConnectionString1 %>" 
                                    SelectCommand="SELECT [HallNum], [Hall], [Address], [Capacity], [Parking], [Timing], [HallType], [OutsideFood], [OutsideDecor], [Policies], [Rent], [HallImage1], [HallImage2], [HallImage3], [HallImage4] FROM [HallTBL] WHERE ([City] = @City)">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="lblCity" Name="City" PropertyName="Text" 
                                            Type="String" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                            </td>
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
            <td>
                &nbsp;</td>
            <td class="style1">
                            <asp:Label ID="lblHall" runat="server" Font-Size="Large" 
                    ForeColor="#0000CC" Visible="False"></asp:Label>
                        </td>
            <td class="style2">
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
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

