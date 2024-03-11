<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AdminNewHall.aspx.cs" Inherits="AdminNewHall" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
        }
        .style8
        {
            width: 104px;
            height: 3px;
        }
        .style9
        {
            height: 3px;
        }
        .style10
        {
            width: 104px;
            height: 2px;
        }
        .style11
        {
            height: 2px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="w-100">
        <tr>
            <td class="text-center" colspan="5">
                <asp:Label ID="Label17" runat="server" Font-Bold="True" Font-Size="Large" 
                    Text="ADD HALLS"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="text-center">
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
                <asp:Label ID="Label2" runat="server" Font-Size="Large" ForeColor="Black" 
                    Text="City"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddlCity" runat="server" DataSourceID="SqlDataSource1" 
                    DataTextField="City" DataValueField="City" Height="25px" Width="200px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:HallBookingDBConnectionString1 %>" 
                    SelectCommand="SELECT [City] FROM [VenueCityTBL]"></asp:SqlDataSource>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="ddlCity" Display="Dynamic" ErrorMessage="*" 
                    Font-Size="Large" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label3" runat="server" Font-Size="Large" ForeColor="Black" 
                    Text="Hall Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtHallName" runat="server" Height="25px" Width="300px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtHallName" Display="Dynamic" ErrorMessage="*" 
                    Font-Size="Large" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label4" runat="server" Font-Size="Large" ForeColor="Black" 
                    Text="Address"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtAddress" runat="server" Height="98px" TextMode="MultiLine" 
                    Width="346px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtAddress" ErrorMessage="Address Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label5" runat="server" Font-Size="Large" ForeColor="Black" 
                    Text="Capacity"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtCapacity" runat="server" Height="25px" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="txtParking" Display="Dynamic" ErrorMessage="*" 
                    Font-Size="Large" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label6" runat="server" Font-Size="Large" ForeColor="Black" 
                    Text="Parking Facility"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtParking" runat="server" Height="25px" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="txtParking" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label7" runat="server" Font-Size="Large" ForeColor="Black" 
                    Text="Venue Timing"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtTime" runat="server" Height="25px" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="txtTime" Display="Dynamic" ErrorMessage="*" 
                    Font-Size="Large" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                </td>
            <td class="style9">
                <asp:Label ID="Label8" runat="server" Font-Size="Large" ForeColor="Black" 
                    Text="Hall Type"></asp:Label>
            </td>
            <td class="style9">
                <asp:RadioButtonList ID="rblHallType" runat="server" 
                    RepeatDirection="Horizontal">
                    <asp:ListItem>AC</asp:ListItem>
                    <asp:ListItem>Non AC</asp:ListItem>
                </asp:RadioButtonList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="rblHallType" Display="Dynamic" ErrorMessage="*" 
                    Font-Size="Large" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="style9">
                </td>
            <td class="style9">
                </td>
        </tr>
        <tr>
            <td class="style10">
                </td>
            <td class="style11">
                <asp:Label ID="Label9" runat="server" Font-Size="Large" ForeColor="Black" 
                    Text="Outside Food"></asp:Label>
            </td>
            <td class="style11">
                <asp:RadioButtonList ID="rblOutFood" runat="server" Font-Size="Large" 
                    ForeColor="Black" RepeatDirection="Horizontal">
                    <asp:ListItem>Allowed</asp:ListItem>
                    <asp:ListItem>Not Allowed</asp:ListItem>
                </asp:RadioButtonList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ControlToValidate="rblOutFood" ErrorMessage="*" Font-Size="Large" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="style11">
                </td>
            <td class="style11">
                </td>
        </tr>
        <tr>
            <td class="style8">
                </td>
            <td class="style9">
                <asp:Label ID="Label10" runat="server" Font-Size="Large" ForeColor="Black" 
                    Text="Outside Decor"></asp:Label>
            </td>
            <td class="style9">
                <asp:RadioButtonList ID="rblOutDecor" runat="server" Font-Size="Large" 
                    ForeColor="Black" RepeatDirection="Horizontal">
                    <asp:ListItem>Allowed</asp:ListItem>
                    <asp:ListItem>Not Allowed</asp:ListItem>
                </asp:RadioButtonList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                    ControlToValidate="rblOutDecor" Display="Dynamic" ErrorMessage="*" 
                    Font-Size="Large" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="style9">
                </td>
            <td class="style9">
                </td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label11" runat="server" Font-Size="Large" ForeColor="Black" 
                    Text="Booking Policies"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtPolicy" runat="server" Height="125px" TextMode="MultiLine" 
                    Width="335px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                    ControlToValidate="txtPolicy" Display="Dynamic" ErrorMessage="*" 
                    Font-Size="Large" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label12" runat="server" Font-Size="Large" ForeColor="Black" 
                    Text="Hall Rent Per Day"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtRent" runat="server" Height="25px" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                    ControlToValidate="txtRent" Display="Dynamic" ErrorMessage="*" 
                    Font-Size="Large" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label13" runat="server" Font-Size="Large" ForeColor="Black" 
                    Text="Hall Image 1"></asp:Label>
            </td>
            <td>
                <asp:FileUpload ID="fupImage1" runat="server" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                    ControlToValidate="fupImage1" Display="Dynamic" ErrorMessage="*" 
                    Font-Size="Large" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label14" runat="server" Font-Size="Large" ForeColor="Black" 
                    Text="Hall Image 2"></asp:Label>
            </td>
            <td>
                <asp:FileUpload ID="fupImage2" runat="server" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
                    ControlToValidate="fupImage2" Display="Dynamic" ErrorMessage="*" 
                    Font-Size="Large" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label15" runat="server" Font-Size="Large" ForeColor="Black" 
                    Text="Hall Image 3"></asp:Label>
            </td>
            <td>
                <asp:FileUpload ID="fupImage3" runat="server" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" 
                    ControlToValidate="fupImage3" Display="Dynamic" ErrorMessage="*" 
                    Font-Size="Large" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label16" runat="server" Font-Size="Large" ForeColor="Black" 
                    Text="Hall Image 4"></asp:Label>
            </td>
            <td>
                <asp:FileUpload ID="fupImage4" runat="server" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" 
                    ControlToValidate="fupImage4" Display="Dynamic" ErrorMessage="*" 
                    Font-Size="Large" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
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
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td>
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

