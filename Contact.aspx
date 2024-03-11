<%@ Page Title="" Language="C#" MasterPageFile="~/GuestMasterPage.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
        }
        .style5
        {
            height: 26px;
        }
        .style7
        {
            height: 27px;
        }
        .style8
        {
            height: 26px;
            text-align: left;
        }
        .style9
        {
            height: 27px;
            text-align: left;
        }
        .style10
        {
            height: 26px;
            text-align: center;
        }
        .style11
        {
            height: 27px;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="w-100">
        <tr>
            <td colspan="6">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" 
                    Text="Contact Us"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="text-sm-center" colspan="6">
                <asp:Label ID="Label2" runat="server" Text="We want to hear from you!" 
                    Font-Size="Large"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="text-sm-center" colspan="2">
                &nbsp;</td>
            <td class="text-sm-center" colspan="2">
                &nbsp;</td>
            <td class="text-sm-center">
                &nbsp;</td>
            <td class="text-sm-center">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1" colspan="6">
                <asp:Label ID="Label3" runat="server" 
                    
                    Text="If you have any questions about the site or need support, please fill out the form below, and we will respond to your request as quickly as possible." 
                    Font-Size="Small"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                <asp:Label ID="Label4" runat="server" Text="Name"></asp:Label>
            </td>
            <td class="style9">
                <asp:TextBox ID="ContactName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="ContactName" Display="Dynamic" ErrorMessage="*" 
                    Font-Size="Large" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="style7">
            </td>
            <td class="style7">
            </td>
            <td class="style7">
            </td>
            <td class="style7">
            </td>
        </tr>
        <tr>
            <td class="text-sm-center">
                &nbsp;</td>
            <td class="text-left">
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
            <td class="text-sm-center">
                <asp:Label ID="Label5" runat="server" Text="Phone Number"></asp:Label>
            </td>
            <td class="text-left">
                <asp:TextBox ID="ContactPhno" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="ContactPhno" Display="Dynamic" ErrorMessage="*" 
                    Font-Size="Large" ForeColor="Red"></asp:RequiredFieldValidator>
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
            <td class="text-sm-center">
                &nbsp;</td>
            <td class="text-left">
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
            <td class="style10">
            </td>
            <td class="style8">
            </td>
            <td class="style5">
            </td>
            <td class="style5">
            </td>
            <td class="style5">
            </td>
            <td class="style5">
            </td>
        </tr>
        <tr>
            <td class="text-sm-center">
                <asp:Label ID="Label7" runat="server" Text="Email"></asp:Label>
            </td>
            <td class="text-left">
                <asp:TextBox ID="ContactEmail" runat="server" TextMode="Email"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="ContactEmail" ErrorMessage="*" Font-Size="Large" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
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
            <td class="text-sm-center">
                &nbsp;</td>
            <td class="text-left">
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
            <td class="text-sm-center" colspan="6">
                <asp:Label ID="Label8" runat="server" Text="Enquiry Here"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="text-sm-center">
                &nbsp;</td>
            <td class="text-sm-center">
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
            <td class="text-sm-center" colspan="6">
                <asp:TextBox ID="ContactEnquiry" runat="server" Height="103px" Width="677px" 
                    TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="ContactEnquiry" Display="Dynamic" ErrorMessage="*" 
                    Font-Size="Large" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="text-sm-center">
                &nbsp;</td>
            <td class="text-left">
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
            <td class="text-sm-center" colspan="6">
                <asp:Button ID="Button1" runat="server" Font-Bold="True" Text="Submmit" 
                    onclick="Button1_Click" />
            </td>
        </tr>
        <tr>
            <td class="text-sm-center">
                &nbsp;</td>
            <td class="text-left">
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
            <td class="text-sm-center">
                &nbsp;</td>
            <td class="text-left">
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
</asp:Content>

