using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class CustomerHallBookingPaymentHistory : System.Web.UI.Page
{
    DataTable dt = new DataTable();
    eventbooking eb = new eventbooking();
    protected void Page_Load(object sender, EventArgs e)
    {
        lblMobileNum.Text = Session["MobileNumber"].ToString();
        string qry1 = "select * from CustomerTBL where MobileNum='" + lblMobileNum.Text + "'";
        dt = eb.dbSelect(qry1);

        lblName.Text = dt.Rows[0]["Name"].ToString();


        string qry2 = "SELECT HallPaymentTBL.HallPaymentID, BookingTBL.BookingID, HallPaymentTBL.Rent, HallPaymentTBL.Advance, HallPaymentTBL.PaymentDate, HallPaymentTBL.PaymentStatus FROM HallPaymentTBL INNER JOIN BookingTBL ON HallPaymentTBL.BookingID = BookingTBL.BookingID where BookingTBL.MobileNum='" + lblMobileNum.Text + "'";
        dt = eb.dbSelect(qry2);

        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
}