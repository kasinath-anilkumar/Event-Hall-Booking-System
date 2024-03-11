using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class CustomerHallBooking : System.Web.UI.Page
{
    DataTable dt = new DataTable();
    eventbooking eb = new eventbooking();
    protected void Page_Load(object sender, EventArgs e)
    {
        lblMobileNum.Text = Session["MobileNumber"].ToString();
        string qry1 = "select * from CustomerTBL where MobileNum='" + lblMobileNum.Text + "'";
        dt = eb.dbSelect(qry1);

        lblName.Text = dt.Rows[0]["Name"].ToString();
        lblHallNum.Text = Session["HallID"].ToString();

      
      
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        string BookingStatus = "PENDING";
        string BookingDate = System.DateTime.Now.ToShortDateString();
        string BookingValidity = "PENDING";
        string qry2 = "insert into BookingTBL values('" + lblMobileNum.Text + "','" + lblHallNum.Text + "','" + txtEvent.Text + "','" + txtFrmdate.Text + "','" + txttodate.Text + "','" + txtDescription.Text + "','" + BookingStatus + "','" + BookingDate + "','" + BookingValidity + "','" + lblName.Text + "')";
        eb.dbExecute(qry2);

        Response.Write("<script>alert('Hall Booking Completed...........')</script>");
        Response.Write("<script>window.location.href='CustomerHome.aspx';</script>");
    }
}
