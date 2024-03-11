<%@ Page Title="" Language="C#" MasterPageFile="~/GuestMasterPage.master" AutoEventWireup="true" CodeFile="CustRegistration.aspx.cs" Inherits="CustRegistration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            height: 35px;
        }
        .style2
        {
            width: 242px;
        }
        .style3
        {
            height: 35px;
            width: 242px;
        }
        .style4
        {
            height: 27px;
        }
        .style5
        {
            width: 242px;
            height: 27px;
        }
    </style>

    <script language="javascript" type="text/javascript">

        function validate1() {
            var name = document.getElementById('<%=txtName.ClientID%>').value;
            var doB = document.getElementById('<%=txtDoB.ClientID%>').value;
            var addr = document.getElementById('<%=txtAddress.ClientID%>').value;
            var email = document.getElementById('<%=txtEmail.ClientID%>').value;
            var mob = document.getElementById('<%=txtMobile.ClientID%>').value;
            var pwd = document.getElementById('<%=txtPwd.ClientID%>').value;
            var cpwd = document.getElementById('<%=txtCnPwd.ClientID%>').value;

            if (name == '') {
                alert('Name Cannot be Blank...');
                return false;
            }

            else if (doB == '') {
                alert('Date of Birth Field Cannot be Blank...');
                return false;
            }
            else if (addr == '') {
                alert('Address Field Cannot be Blank...');
                return false;
            }
            else if (email == '') {
                alert('Email Field Cannot be Blank...');
                return false;
            }
            else if (mob == '') {
                alert('Mobile Field Cannot be Blank...');
                return false;
            }
            else if (pwd == '') {
                alert('Password Field Cannot be Blank...');
                return false;
            }
            else if (cpwd == '') {
                alert('Enter Confirm Password...');
                return false;
            }
        }

        function validate2() {
            var a = document.getElementById('<%=txtMobile.ClientID%>').value;
            var ph = /(7|8|9)\d{9}/;

            if (a == '') {
                alert('Field Cannot be Blank...');
                return false;
            }
            else {
                if ((a.match(ph))) {
                    return false;
                }
                else {
                    alert('Enter Proper Mobile');
                }
            }
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="w-100">
        <tr>
            <td>
                &nbsp;</td>
            <td class="style2">
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
            <td class="style2">
                <asp:Label ID="Label1" runat="server" Font-Size="Large" ForeColor="Black" 
                    Text="Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtName" runat="server" Height="25px" Width="200px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style2">
                <asp:Label ID="Label2" runat="server" Font-Size="Large" ForeColor="Black" 
                    Text="Gender"></asp:Label>
            </td>
            <td>
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" Font-Size="Large" 
                    ForeColor="Black" RepeatDirection="Horizontal">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style2">
                <asp:Label ID="Label3" runat="server" Font-Size="Large" ForeColor="Black" 
                    Text="Date of Birth"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtDoB" runat="server" Height="25px" Width="200px" 
                    TextMode="Date"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style2">
                <asp:Label ID="Label4" runat="server" Font-Size="Large" ForeColor="Black" 
                    Text="Address"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtAddress" runat="server" Height="175px" TextMode="MultiLine" 
                    Width="350px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
            </td>
            <td class="style3">
                <asp:Label ID="Label5" runat="server" Font-Size="Large" ForeColor="Black" 
                    Text="Email ID"></asp:Label>
            </td>
            <td class="style1">
                <asp:TextBox ID="txtEmail" runat="server" Height="25px" Width="300px" 
                    TextMode="Email"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="txtEmail" ErrorMessage="Enter Proper Email ID" 
                    ForeColor="#CC0000" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
            <td class="style1">
            </td>
            <td class="style1">
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style2">
                <asp:Label ID="Label6" runat="server" Font-Size="Large" ForeColor="Black" 
                    Text="Upload Scanned ID Proof"></asp:Label>
            </td>
            <td>
                <asp:FileUpload ID="fupIDProof" runat="server" />
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style2">
                <asp:Label ID="Label7" runat="server" Font-Size="Large" ForeColor="Black" 
                    Text="Mobile Number"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtMobile" runat="server" Height="25px" Width="200px" onfocusout="if(validate2()==false) return(false);"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style2">
                <asp:Label ID="Label8" runat="server" Font-Size="Large" ForeColor="Black" 
                    Text="Password"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtPwd" runat="server" Height="25px" TextMode="Password" 
                    Width="200px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style2">
                <asp:Label ID="Label9" runat="server" Font-Size="Large" ForeColor="Black" 
                    Text="Confirm Password"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtCnPwd" runat="server" Height="25px" TextMode="Password" 
                    Width="200px"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="txtPwd" ControlToValidate="txtCnPwd" 
                    ErrorMessage="Password Mismatch" ForeColor="#CC0000"></asp:CompareValidator>
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
            <td class="style4">
                </td>
            <td class="style4">
                </td>
            <td class="style4">
                </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Height="50px" onclick="Button1_Click" 
                    Text="SAVE" Width="100px" onClientClick="if(validate1()==false) return(false);" />
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style2">
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
            <td class="style2">
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

