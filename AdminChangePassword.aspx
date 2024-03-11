<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AdminChangePassword.aspx.cs" Inherits="AdminChangePassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 1099px;
        }
        .style3
        {
            width: 218px;
        }
        .style6
        {
            width: 220px;
        }
        .style7
        {
            width: 217px;
        }
        .style8
        {
            width: 155px;
        }
        .style9
        {
            width: 172px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="w-100">
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style9">
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
                <asp:Panel ID="Panel1" runat="server">
                    <table class="style1">
                        <tr>
                            <td class="style3">
                                &nbsp;</td>
                            <td class="style6">
                                &nbsp;</td>
                            <td class="style7">
                                &nbsp;</td>
                            <td colspan="2">
                                <asp:Label ID="Label2" runat="server" Font-Size="Large" ForeColor="Black" 
                                    Text="Mobile Number"></asp:Label>
                                <asp:Label ID="lblMobile" runat="server" Font-Size="Large" ForeColor="Black"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style3">
                                &nbsp;</td>
                            <td class="style6">
                                &nbsp;</td>
                            <td class="style7">
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
            <td class="style8">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style9">
                <asp:Label ID="Label3" runat="server" Font-Size="Large" ForeColor="Black" 
                    Text="Current Password"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtCrPwd" runat="server" Height="25px" TextMode="Password" 
                    Width="200px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style9">
                <asp:Label ID="Label4" runat="server" Font-Size="Large" ForeColor="Black" 
                    Text="New Password"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtNewPWd" runat="server" Height="25px" TextMode="Password" 
                    Width="200px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style9">
                <asp:Label ID="Label5" runat="server" Font-Size="Large" ForeColor="Black" 
                    Text="Confirm Password"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtCnfPwd" runat="server" Height="25px" TextMode="Password" 
                    Width="200px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Height="50px" onclick="Button1_Click" 
                    Text="SAVE" Width="100px" />
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

