<%@ Page Title="" Language="C#" MasterPageFile="~/CustomerMasterPage.master" AutoEventWireup="true" CodeFile="CustomerHallBooking.aspx.cs" Inherits="CustomerHallBooking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style1
    {
        height: 27px;
    }
    .style2
    {
        width: 114px;
    }
    .style3
    {
        height: 27px;
        width: 114px;
    }
    .style4
    {
        width: 196px;
    }
    .style5
    {
        height: 27px;
        }
        .style6
        {
            width: 114px;
            height: 52px;
        }
        .style7
        {
            width: 196px;
            height: 52px;
        }
        .style8
        {
            height: 52px;
        }
        .style9
        {
            width: 196px;
            text-align: left;
        }
        .style10
        {
            width: 114px;
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="w-100">
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style4">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td colspan="5" class="text-left">
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
        <td class="style10">
            &nbsp;</td>
        <td class="style9">
            &nbsp;</td>
        <td class="text-left">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style3">
        </td>
        <td class="style5" colspan="2">
                            <asp:Label ID="Label4" runat="server" Font-Size="Large" ForeColor="Black" 
                                Text="Selected Hall Number"></asp:Label>
                            :
                            <asp:Label ID="lblHallNum" runat="server" Font-Size="Large" 
                ForeColor="#0000CC"></asp:Label>
                        </td>
        <td class="style1">
        </td>
        <td class="style1">
        </td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style4">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style4">
                            <asp:Label ID="Label5" runat="server" Font-Size="Large" ForeColor="Black" 
                                Text="Event Type"></asp:Label>
                            </td>
        <td>
            <asp:TextBox ID="txtEvent" runat="server" Height="25px" Width="300px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="txtEvent" Display="Dynamic" ErrorMessage="* Required Field" 
                Font-Bold="True" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style4">
                            <asp:Label ID="Label6" runat="server" Font-Size="Large" ForeColor="Black" 
                                Text="Event Date"></asp:Label>
                            </td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td colspan="2">
            <table class="w-100">
                <tr>
                    <td>
                            <asp:Label ID="Label8" runat="server" Font-Size="Large" ForeColor="Black" 
                                Text="From Date"></asp:Label>
                            <asp:TextBox ID="txtFrmdate" runat="server" TextMode="Date"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                ControlToValidate="txtFrmdate" ErrorMessage="*" Font-Size="Large" 
                                ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                    <td>
                        &nbsp;</td>
                    <td>
                            <asp:Label ID="Label9" runat="server" Font-Size="Large" ForeColor="Black" 
                                Text="To Date"></asp:Label>
                            <asp:TextBox ID="txttodate" runat="server" TextMode="Date"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                ControlToValidate="txttodate" ErrorMessage="*" Font-Size="Large" 
                                ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style4">
                            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style4">
                            <asp:Label ID="Label7" runat="server" Font-Size="Large" ForeColor="Black" 
                                Text="Event Description"></asp:Label>
                            </td>
        <td>
            <asp:TextBox ID="txtDescription" runat="server" Height="80px" 
                TextMode="MultiLine" Width="562px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="txtDescription" Display="Dynamic" 
                ErrorMessage="* Describe Event" Font-Bold="True" Font-Size="Small" 
                ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style3">
        </td>
        <td class="style5">
        </td>
        <td class="style1">
        </td>
        <td class="style1">
        </td>
        <td class="style1">
        </td>
    </tr>
    <tr>
        <td class="style6">
            &nbsp;</td>
        <td class="style7">
            </td>
        <td class="style8">
            <asp:Button ID="Button1" runat="server" Height="50px" onclick="Button1_Click" 
                Text="SAVE" Width="100px" />
        </td>
        <td class="style8">
            </td>
        <td class="style8">
            </td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style4">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style4">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style4">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style4">
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

