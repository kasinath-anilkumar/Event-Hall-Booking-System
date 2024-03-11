using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class CustomerFacilityBooking : System.Web.UI.Page
{
    DataTable dt = new DataTable();
    eventbooking eb = new eventbooking();
    protected void Page_Load(object sender, EventArgs e)
    {
        lblMobileNum.Text = Session["MobileNumber"].ToString();
        string qry1 = "select * from CustomerTBL where MobileNum='" + lblMobileNum.Text + "'";
        dt = eb.dbSelect(qry1);

        lblName.Text = dt.Rows[0]["Name"].ToString();

        lblFacility.Text = Session["Facility"].ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string BookingDate = System.DateTime.Now.ToShortDateString();
        string BookingStatus = "PENDING";
        string BookingValidity = "PENDING";

        string qry2 = "insert into FacilitybookingTBL values('" + lblMobileNum.Text + "','" + lblFacility.Text + "','" + txtFD.Text + "','" + txtTD.Text + "','" + BookingDate + "','" + BookingStatus + "','" + BookingValidity + "','" + lblName.Text + "')";
        eb.dbExecute(qry2);

        Response.Write("<script>alert('Booking Done...........')</script>");
        Response.Write("<script>window.location.href='CustomerFacility.aspx';</script>");
    }
}