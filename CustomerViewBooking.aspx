<%@ Page Title="" Language="C#" MasterPageFile="~/CustomerMasterPage.master" AutoEventWireup="true" CodeFile="CustomerViewBooking.aspx.cs" Inherits="CustomerViewBooking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            height: 27px;
        }
        .style11
        {
            height: 88px;
        }
        .style12
        {
            width: 2%;
        }
        .style13
        {
            width: 22%;
        }
        .style15
        {
            height: 27px;
            width: 2%;
        }
        .style16
        {
            height: 27px;
            width: 22%;
        }
        .style18
        {
            width: 200px;
        }
        .style19
        {
            width: 52%;
        }
        .style20
        {
            height: 27px;
            width: 200px;
        }
        .style21
        {
            height: 27px;
            width: 52%;
        }
        .style22
        {
            height: 66px;
        }
        .style23
        {
            width: 100%;
        }
        .style27
        {
            height: 31px;
            text-align: center;
        }
        .style29
        {
            height: 4px;
        }
        .style41
    {
        width: 464px;
        text-align: center;
    }
        .style49
        {
            height: 27px;
            width: 55px;
        }
        .style50
        {
            width: 55px;
        }
        .style54
        {
            width: 448px;
        }
        .style55
        {
            width: 448px;
            text-align: center;
        }
        .style56
        {
            width: 425px;
            text-align: left;
        }
        .style57
        {
            width: 425px;
            text-align: center;
        }
        .style58
        {
            width: 425px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="w-100">
        <tr>
            <td class="style12">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td class="style18">
                &nbsp;</td>
            <td class="style19">
                &nbsp;</td>
            <td class="style12">
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
                            </td>
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
                            </td>
                        <td>
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
                </table>
            </asp:Panel>
            </td>
        </tr>
        <tr>
            <td class="style15">
                </td>
            <td class="style16">
                </td>
            <td class="style20">
                </td>
            <td class="style21">
                </td>
            <td class="style15">
                </td>
        </tr>
        <tr>
            <td class="style15">
                </td>
            <td class="style16">
                            <asp:Label ID="Label4" runat="server" Font-Size="Large" ForeColor="Black" 
                                Text="Select Booking ID"></asp:Label>
                            </td>
            <td class="style20">
                <asp:DropDownList ID="ddlBookingID" runat="server" 
                    DataSourceID="SqlDataSource1" DataTextField="BookingID" 
                    DataValueField="HallNum" Width="200px" 
                    onselectedindexchanged="ddlBookingID_SelectedIndexChanged">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="ddlBookingID" Display="Dynamic" 
                    ErrorMessage="Select Booking ID" Font-Size="X-Small" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:HallBookingDBConnectionString1 %>" 
                    SelectCommand="SELECT [BookingID], [HallNum] FROM [BookingTBL] WHERE ([MobileNum] = @MobileNum)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="lblMobileNum" Name="MobileNum" 
                            PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
               
            </td>
            <td class="style21">
                </td>
            <td class="style15">
                </td>
        </tr>
        <tr>
            <td class="style15">
                &nbsp;</td>
            <td class="style16">
                &nbsp;</td>
            <td class="style20">
                &nbsp;</td>
            <td class="style21">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style12">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td class="style18">
                <asp:Button ID="Button1" runat="server" Height="50px" onclick="Button1_Click" 
                    Text="VIEW" Width="100px" />
            </td>
            <td class="style19">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style12">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td class="style18">
                &nbsp;</td>
            <td class="style19">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="5">
                <asp:Panel ID="Panel2" runat="server" Visible="False">
                    <table class="w-100">
                        <tr>
                            <td class="style49">
                                <asp:Label ID="lblBookingID" runat="server" Visible="False"></asp:Label>
                            </td>
                            <td class="style1" colspan="4">
                                <asp:Label ID="Label5" runat="server" Font-Size="Large" ForeColor="Maroon" 
                                    Text="View Booking Details"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style50">
                                <asp:Label ID="lblHallNum" runat="server" Visible="False"></asp:Label>
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
                            <td class="style50">
                                &nbsp;</td>
                            <td colspan="4">
                                <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource2">
                                    <ItemTemplate>
                                        <table class="w-100">
                                            <tr>
                                                <td>
                                                    <asp:Label ID="Label6" runat="server" Font-Size="Large" ForeColor="Black" 
                                                        Text="Hall Number"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:Label ID="HallNumLabel" runat="server" Font-Size="Large" ForeColor="Black" 
                                                        Text='<%# Eval("HallNum") %>' />
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
                                                    <asp:Label ID="Label7" runat="server" Font-Size="Large" ForeColor="Black" 
                                                        Text="Event Name"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:Label ID="EventLabel" runat="server" Font-Size="Large" ForeColor="Black" 
                                                        Text='<%# Eval("Event") %>' />
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
                                                    <asp:Label ID="Label8" runat="server" Font-Size="Large" ForeColor="Black" 
                                                        Text="From Date"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:Label ID="FromDateLabel" runat="server" Font-Size="Large" 
                                                        ForeColor="Black" Text='<%# Eval("FromDate") %>' />
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
                                                    <asp:Label ID="Label9" runat="server" Font-Size="Large" ForeColor="Black" 
                                                        Text="To Date"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:Label ID="ToDateLabel" runat="server" Font-Size="Large" ForeColor="Black" 
                                                        Text='<%# Eval("ToDate") %>' />
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
                                                    <asp:Label ID="Label10" runat="server" Font-Size="Large" ForeColor="Black" 
                                                        Text="Description"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:Label ID="DescriptionLabel" runat="server" Font-Size="Large" 
                                                        ForeColor="Black" Text='<%# Eval("Description") %>' />
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
                                                    <asp:Label ID="Label11" runat="server" Font-Size="Large" ForeColor="Black" 
                                                        Text="Booking Date"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:Label ID="BookingDateLabel" runat="server" Font-Size="Large" 
                                                        ForeColor="Black" Text='<%# Eval("BookingDate") %>' />
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
                                                    <asp:Label ID="Label12" runat="server" Font-Size="Large" ForeColor="Black" 
                                                        Text="Booking Status"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:Label ID="StatusLabel" runat="server" Font-Size="Large" ForeColor="Black" 
                                                        Text='<%# Eval("Status") %>' />
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
                                                    <asp:Label ID="Label13" runat="server" Font-Size="Large" ForeColor="Black" 
                                                        Text="Booking Validity"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:Label ID="BookingValidityLabel" runat="server" Font-Size="Large" 
                                                        ForeColor="Black" Text='<%# Eval("BookingValidity") %>' />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    &nbsp;</td>
                                                <td>
                                                    &nbsp;</td>
                                            </tr>
                                        </table>
                                    </ItemTemplate>
                                </asp:DataList>
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:HallBookingDBConnectionString1 %>" 
                                    SelectCommand="SELECT [HallNum], [Event], [FromDate], [ToDate], [Description], [BookingDate], [Status], [BookingValidity] FROM [BookingTBL] WHERE ([BookingID] = @BookingID)">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="lblBookingID" Name="BookingID" 
                                            PropertyName="Text" Type="Int32" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                            </td>
                        </tr>
                        <tr>
                            <td class="style50">
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
                            <td class="style50">
                                &nbsp;</td>
                            <td colspan="4">
                                <asp:Label ID="Label14" runat="server" Font-Size="Large" ForeColor="Maroon" 
                                    Text="View Hall Details"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style50">
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
                            <td class="style50">
                                &nbsp;</td>
                            <td colspan="4">
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                    BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" 
                                    CellPadding="4" DataKeyNames="Hall" DataSourceID="SqlDataSource3">
                                    <Columns>
                                        <asp:BoundField DataField="Hall" HeaderText="Hall" ReadOnly="True" 
                                            SortExpression="Hall" />
                                        <asp:BoundField DataField="Address" HeaderText="Address" 
                                            SortExpression="Address" />
                                        <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                                        <asp:BoundField DataField="Capacity" HeaderText="Capacity" 
                                            SortExpression="Capacity" />
                                        <asp:BoundField DataField="Parking" HeaderText="Parking" 
                                            SortExpression="Parking" />
                                        <asp:BoundField DataField="Timing" HeaderText="Timing" 
                                            SortExpression="Timing" />
                                        <asp:BoundField DataField="HallType" HeaderText="Hall Type" 
                                            SortExpression="HallType" />
                                        <asp:BoundField DataField="OutsideFood" HeaderText="Outside Food" 
                                            SortExpression="OutsideFood" />
                                        <asp:BoundField DataField="OutsideDecor" HeaderText="Outside Decor" 
                                            SortExpression="OutsideDecor" />
                                        <asp:BoundField DataField="Policies" HeaderText="Policies" 
                                            SortExpression="Policies" />
                                        <asp:BoundField DataField="Rent" HeaderText="Rent" SortExpression="Rent" />
                                    </Columns>
                                    <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                                    <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                                    <RowStyle BackColor="White" ForeColor="#330099" />
                                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                                    <SortedAscendingCellStyle BackColor="#FEFCEB" />
                                    <SortedAscendingHeaderStyle BackColor="#AF0101" />
                                    <SortedDescendingCellStyle BackColor="#F6F0C0" />
                                    <SortedDescendingHeaderStyle BackColor="#7E0000" />
                                </asp:GridView>
                                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:HallBookingDBConnectionString1 %>" 
                                    
                                    SelectCommand="SELECT [Hall], [Address], [City], [Capacity], [Parking], [Timing], [HallType], [OutsideFood], [OutsideDecor], [Policies], [Rent] FROM [HallTBL] WHERE ([HallNum] = @HallNum)" 
                                    
                                    
                                    
                                    DeleteCommand="DELETE  FROM BookingTBL WHERE(BookingID)=@BookingID,[MobileNum],[HallNum],[Event],[FromDate],[ToDate],[Description],[Status],[BookingDate],[Bookingvalidity],[Name]">
                                    <DeleteParameters>
                                        <asp:Parameter Name="BookingID" />
                                    </DeleteParameters>
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="ddlBookingID" Name="HallNum" PropertyName="SelectedValue" 
                                            Type="Int32" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                            </td>
                        </tr>
                        <tr>
                            <td class="style50">
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
                            <td class="style50">
                                &nbsp;</td>
                            <td class="text-left">
                                <asp:Button ID="btnfeedback" runat="server" Height="21px" 
                                    onclick="btnfeedback_Click" Text="Write A Feedback" Width="97px" 
                                    Font-Size="X-Small" />
                            </td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style50">
                                &nbsp;</td>
                            <td class="text-left">
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
            <td colspan="5" class="style29">
                </td>
        </tr>
        <tr>
            <td colspan="5" class="style22">
                <asp:Panel ID="Panel3" runat="server" Visible="False">
                    <table class="style23">
                        <tr>
                            <td class="style56">
                                &nbsp;</td>
                            <td class="text-left" colspan="2">
                                <asp:Label ID="Label15" runat="server" Text="Share Your Experience" 
                                    Font-Bold="True" Font-Size="Medium"></asp:Label>
                            </td>
                            <td class="text-center">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style57">
                                &nbsp;</td>
                            <td class="text-left" colspan="2" rowspan="5">
                                <asp:TextBox ID="txtfeed" runat="server" Height="71px" Width="476px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                    ControlToValidate="txtfeed" Display="Dynamic" ErrorMessage="Enter Feedback" 
                                    ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style57">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style58">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style58">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style58">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style57">
                                &nbsp;</td>
                            <td class="style41">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style27" colspan="4">
                                <asp:Button ID="btnfeedsub" runat="server" BackColor="#FF9900" 
                                    onclick="btnfeedsub_Click" Text="Submit" />
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td colspan="5" class="style11">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="5" class="style11">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="5" class="style11">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="5">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="5">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="5">
                &nbsp;</td>
        </tr>
        </table>
</asp:Content>

