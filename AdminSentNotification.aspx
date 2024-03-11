<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AdminSentNotification.aspx.cs" Inherits="AdminSentNotification" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style1
    {
        width: 100%;
    }
    .style2
    {
    }
    .style3
    {
        width: 213px;
    }
    .style4
    {
        width: 323px;
    }
    .style5
    {
        width: 129px;
        height: 18px;
    }
    .style6
    {
        width: 213px;
        height: 18px;
    }
    .style7
    {
        height: 18px;
    }
    .style8
    {
        width: 323px;
        height: 18px;
    }
    .style9
    {
        width: 213px;
        text-align: center;
    }
    .style10
    {
        height: 27px;
    }
    .style16
    {
        height: 27px;
        width: 235px;
    }
    .style17
    {
        width: 235px;
    }
    .style18
    {
        height: 27px;
        width: 85px;
    }
    .style19
    {
        width: 85px;
    }
    .style20
    {
        width: 85px;
        text-align: center;
    }
    .style21
    {
        width: 235px;
        text-align: center;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style3">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td class="style4">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style3">
            <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
                            <asp:Label ID="lblName" runat="server" Font-Size="Large" 
                ForeColor="#0000CC"></asp:Label>
                        </td>
        <td>
            &nbsp;</td>
        <td class="style4">
            <asp:Label ID="Label2" runat="server" Text="Mobile No"></asp:Label>
                            <asp:Label ID="lblMobileNum" runat="server" Font-Size="Large" 
                                ForeColor="#0000CC"></asp:Label>
                        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style3">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td class="style4">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style3">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td class="style4">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style5">
        </td>
        <td class="style6">
            <asp:Label ID="Label3" runat="server" Text="Enter Customer Mobile No"></asp:Label>
        </td>
        <td class="style7">
            <asp:TextBox ID="txtCno" runat="server"></asp:TextBox>
        </td>
        <td class="style8">
        </td>
        <td class="style7">
        </td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style3">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td class="style4">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style9">
            &nbsp;</td>
        <td class="text-center">
            <asp:Button ID="btnCserch" runat="server" Text="Search" Width="143px" 
                onclick="btnCserch_Click" />
        </td>
        <td class="style4">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style3">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td class="style4">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style3">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td class="style4">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style3">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td class="style4">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2" colspan="5">
            <asp:Panel ID="Panel1" runat="server" Height="1638px" Visible="False">
                <table class="style1">
                    <tr>
                        <td class="style16">
                        </td>
                        <td class="style10">
                        </td>
                        <td class="style18">
                        </td>
                        <td class="style10">
                        </td>
                        <td class="style10">
                        </td>
                    </tr>
                    <tr>
                        <td class="style17">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td class="style19">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style17">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td class="style19">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style17">
                            &nbsp;</td>
                        <td colspan="3">
                            <asp:DataList ID="DataList2" runat="server" 
                                DataSourceID="SqlDataSource1" Font-Size="Large" ForeColor="Black">
                                <ItemTemplate>
                                    <table class="w-100">
                                        <tr>
                                            <td>
                                                Name:
                                            </td>
                                            <td>
                                                <asp:Label ID="NameLabel0" runat="server" Text='<%# Eval("Name") %>' />
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
                                                Gender:
                                            </td>
                                            <td>
                                                <asp:Label ID="GenderLabel0" runat="server" Text='<%# Eval("Gender") %>' />
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
                                                DateofBirth:
                                            </td>
                                            <td>
                                                <asp:Label ID="DateofBirthLabel0" runat="server" 
                                                    Text='<%# Eval("DateofBirth") %>' />
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
                                                Address:</td>
                                            <td>
                                                <asp:Label ID="AddressLabel0" runat="server" Text='<%# Eval("Address") %>' />
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
                                                EmailID:
                                            </td>
                                            <td>
                                                <asp:Label ID="EmailIDLabel0" runat="server" Text='<%# Eval("EmailID") %>' />
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
                                                IDProof:
                                            </td>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td colspan="2">
                                                <asp:Image ID="Image1" runat="server" Height="300px" 
                                                    ImageUrl='<%# Eval("IDProof") %>' Width="300px" />
                                            </td>
                                        </tr>
                                    </table>
                                </ItemTemplate>
                            </asp:DataList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:HallBookingDBConnectionString1 %>" 
                                
                                SelectCommand="SELECT [Name], [Gender], [DateofBirth], [Address], [EmailID], [IDProof] FROM [CustomerTBL] WHERE ([MobileNum] = @MobileNum)">
                                <SelectParameters>
                                    <asp:Parameter Name="MobileNum" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style17">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td class="style19">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style17">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td class="style19">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style17">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td class="style19">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style16">
                        </td>
                        <td class="style10">
                        </td>
                        <td class="style18">
                        </td>
                        <td class="style10">
                        </td>
                        <td class="style10">
                        </td>
                    </tr>
                    <tr>
                        <td class="style17">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td class="style19">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style17">
                            &nbsp;</td>
                        <td colspan="2" rowspan="6">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style17">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style17">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style17">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style17">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style17">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style17">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td class="style19">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style21">
                            &nbsp;</td>
                        <td class="text-center">
                            &nbsp;</td>
                        <td class="style20">
                            &nbsp;</td>
                        <td class="text-center">
                            &nbsp;</td>
                        <td class="text-center">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style17">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td class="style19">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style17">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td class="style19">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style17">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td class="style19">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style17">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td class="style19">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style17">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td class="style19">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style17">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td class="style19">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style17">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td class="style19">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style17">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td class="style19">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style17">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td class="style19">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style17">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td class="style19">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style17">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td class="style19">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style17">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td class="style19">
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
        <td class="style2">
            &nbsp;</td>
        <td class="style3">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td class="style4">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style3">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td class="style4">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style3">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td class="style4">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style3">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td class="style4">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

