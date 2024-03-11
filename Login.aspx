<%@ Page Title="" Language="C#" MasterPageFile="~/GuestMasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            height: 50px;
        }
        .style2
        {
            width: 260px;
        }
        .style3
        {
            height: 50px;
            width: 260px;
        }
        .style4
        {
        }
        .style5
        {
            height: 50px;
            width: 209px;
        }
        .style6
        {
            width: 93px;
        }
        .style7
        {
            height: 50px;
            width: 93px;
        }
        .style8
        {
            width: 209px;
        }
        .style9
        {
            width: 209px;
            height: 58px;
        }
        .style10
        {
            width: 260px;
            height: 58px;
        }
        .style11
        {
            width: 93px;
            height: 58px;
        }
        .style12
        {
            height: 58px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="w-100">
        <tr>
            <td class="style4" colspan="4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
            </td>
            <td class="style3">
                <asp:Label ID="Label2" runat="server" Font-Size="Large" ForeColor="Black" 
                    Text="Mobile Number"></asp:Label>
            </td>
            <td class="style7">
                <asp:TextBox ID="txtMob" runat="server" Height="25px" Width="200px" 
                    TextMode="Phone"></asp:TextBox>
            </td>
            <td class="style1">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style2">
                <asp:Label ID="Label3" runat="server" Font-Size="Large" ForeColor="Black" 
                    Text="Password"></asp:Label>
            </td>
            <td class="style6">
                <asp:TextBox ID="txtPwd" runat="server" Height="25px" Width="200px" 
                    TextMode="Password"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                </td>
            <td class="style10">
                </td>
            <td class="style11">
                <asp:Button ID="Button1" runat="server" Height="50px" onclick="Button1_Click" 
                    Text="LOGIN" Width="100px" />
            </td>
            <td class="style12">
                </td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style2">
                <asp:Label ID="Label1" runat="server" Text="Don't Have An Account?" 
                    Font-Size="Large" ForeColor="Black"></asp:Label>
                <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click" 
                    Font-Size="Large" ForeColor="#0000CC">Register</asp:LinkButton>
            </td>
            <td class="style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

