using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class AdminHallPayment : System.Web.UI.Page
{
    DataTable dt = new DataTable();
    eventbooking eb = new eventbooking();
    protected void Page_Load(object sender, EventArgs e)
    {
        lblBookingID.Text = Session["BookingID"].ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string PaymentStatus = "PENDING";
        string BookingStatus = "Advance Payment Pending";
        string PaymentDate = "PENDING";
        
        
        string qry1 = "insert into HallPaymentTBL values('" + lblBookingID.Text + "','" + txtRent.Text + "','" + txtAdvance.Text + "','" + PaymentStatus + "','" + PaymentDate + "')";
        eb.dbExecute(qry1);

        string qry2 = "update BookingTBL set Status='" + BookingStatus + "',BookingValidity='"+txtValidity.Text+"' where BookingID='" + lblBookingID.Text + "'";
        eb.dbExecute(qry2);

        Response.Write("<script>alert ('Payment Created.......')</script>");
        Response.Write("<script>window.location.href='AdminBooking.aspx'</script>");

    }
}