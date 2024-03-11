using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class AdminFacilityPayment : System.Web.UI.Page
{
    DataTable dt = new DataTable();
    eventbooking eb = new eventbooking();
    protected void Page_Load(object sender, EventArgs e)
    {
        lblBookingID.Text = Session["FacilityBookingID"].ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string PaymentStatus = "PENDING";
        string BookingStatus = "Advance Payment Pending";
        string PaymentDate = "PENDING";

        string qry1 = "insert into FacilityPaymentTBL values('" + lblBookingID.Text + "','" + txtRent.Text + "','" + txtAdvance.Text + "','" + PaymentStatus + "','" + PaymentDate + "')";
        eb.dbExecute(qry1);

        string qry2 = "update FacilitybookingTBL set BookingStatus='" + BookingStatus + "',Validity='" + txtValidity.Text + "' where FacilityBookingID='" + lblBookingID.Text + "'";
        eb.dbExecute(qry2);

        Response.Write("<script>alert ('Payment Created.......')</script>");
        Response.Write("<script>window.location.href='AdminBooking.aspx'</script>");
    }
}