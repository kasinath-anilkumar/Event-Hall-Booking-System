<%@ Page Title="" Language="C#" MasterPageFile="~/CustomerMasterPage.master" AutoEventWireup="true" CodeFile="CustomerFacilityBooking.aspx.cs" Inherits="CustomerFacilityBooking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 136px;
        }
        .style3
        {
        }
        .style4
        {
            width: 139px;
            height: 28px;
        }
        .style5
        {
            width: 376px;
            height: 28px;
        }
        .style6
        {
            height: 28px;
        }
        .style7
        {
            width: 139px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="w-100">
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="style3">
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
                <table class="w-100">
                    <tr>
                        <td class="style1">
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
                        <td class="style1">
                            &nbsp;</td>
                        <td>
                            <asp:Label ID="Label1" runat="server" Font-Size="Large" ForeColor="Black" 
                                Text="Name"></asp:Label>
                            :&nbsp;&nbsp;
                            <asp:Label ID="lblName" runat="server" Font-Size="Large" ForeColor="#0000CC"></asp:Label>
                        </td>
                        <td colspan="2">
                            <asp:Label ID="Label3" runat="server" Font-Size="Large" ForeColor="Black" 
                                Text="Mobile"></asp:Label>
                            :&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="lblMobileNum" runat="server" Font-Size="Large" 
                                ForeColor="#0000CC"></asp:Label>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style1">
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
            <td class="style7">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="style3">
                            <asp:Label ID="Label4" runat="server" Font-Size="Large" ForeColor="Black" 
                                Text="Selected Facility"></asp:Label>
                            </td>
            <td>
                            <asp:Label ID="lblFacility" runat="server" Font-Size="Large" 
                    ForeColor="Black"></asp:Label>
                            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
            </td>
            <td class="style5">
            </td>
            <td class="style6">
            </td>
            <td class="style6">
            </td>
            <td class="style6">
            </td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="style3" colspan="2">
                            <asp:Label ID="Label5" runat="server" Font-Size="Large" ForeColor="Black" 
                                Text="Booked Dates" Font-Underline="True"></asp:Label>
                            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="style3" colspan="4">
                <table class="w-100">
                    <tr>
                        <td>
                            <asp:Label ID="Label6" runat="server" Font-Size="Large" ForeColor="Black" 
                                Text="From Date"></asp:Label>
                            <asp:TextBox ID="txtFD" runat="server" Height="27px" TextMode="Date" 
                                Width="194px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="txtFD" Display="Dynamic" ErrorMessage="Date Required" 
                                ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            <asp:Label ID="Label7" runat="server" Font-Size="Large" ForeColor="Black" 
                                Text="To Date"></asp:Label>
                            <asp:TextBox ID="txtTD" runat="server" Height="29px" TextMode="Date" 
                                Width="188px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ControlToValidate="txtTD" Display="Dynamic" ErrorMessage="Date Required" 
                                ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="style3">
                            <asp:Label ID="Label8" runat="server" Font-Size="Large" ForeColor="Black" 
                                Text="Remarks"></asp:Label>
                            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="style3" colspan="2">
                <asp:TextBox ID="txtRemarks" runat="server" Height="64px" TextMode="MultiLine" 
                    Width="519px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtRemarks" Display="Dynamic" 
                    ErrorMessage="Remarks Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="text-center">
                <asp:Button ID="Button1" runat="server" Height="50px" onclick="Button1_Click" 
                    Text="BOOK NOW" />
            </td>
            <td class="text-center">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="style3">
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

