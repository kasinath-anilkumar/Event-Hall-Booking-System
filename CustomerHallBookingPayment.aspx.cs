using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class CustomerHallBookingPayment : System.Web.UI.Page
{
    DataTable dt = new DataTable();
    eventbooking eb = new eventbooking();
    protected void Page_Load(object sender, EventArgs e)
    {
        lblMobileNum.Text = Session["MobileNumber"].ToString();
        string qry1 = "select * from CustomerTBL where MobileNum='" + lblMobileNum.Text + "'";
        dt = eb.dbSelect(qry1);

        lblName.Text = dt.Rows[0]["Name"].ToString();

        string PaymentStatus = "PENDING";

        string qry2 = "SELECT HallPaymentTBL.BookingID,HallPaymentTBL.HallPaymentID FROM HallPaymentTBL INNER JOIN BookingTBL ON HallPaymentTBL.BookingID = BookingTBL.BookingID where BookingTBL.MobileNum='" + lblMobileNum.Text + "' and HallPaymentTBL.PaymentStatus='" + PaymentStatus + "'";
        dt = eb.dbSelect(qry2);

        ddlBookingID.DataSource = dt;
        ddlBookingID.DataBind();
        ddlBookingID.DataTextField = "BookingID";
        ddlBookingID.DataValueField = "HallPaymentID";
        ddlBookingID.DataBind();
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int rowno = Convert.ToInt32(e.CommandArgument.ToString());
        int PaymentID = Convert.ToInt32(GridView1.DataKeys[rowno].Value.ToString());
        string str = e.CommandName.ToString();
        if (str == "pay")
        {
            string PaymentStatus="PAID";
            string PaymentDate=System.DateTime.Now.ToShortDateString();
            string qry3 = "update HallPaymentTBL set PaymentStatus='" + PaymentStatus + "',PaymentDate='" + PaymentDate + "' where HallPaymentID='" + PaymentID + "'";
            eb.dbExecute(qry3);

            string qry4 = "update BookingTBL set Status='" + PaymentStatus + "' where BookingID='" + lblBookingID.Text + "'";
            eb.dbExecute(qry4);

            Response.Write("<script>alert ('Done.......')</script>");
            Response.Write("<script>window.location.href='CustomerPayment.aspx';</script>");
        }
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        lblBookingID.Text = ddlBookingID.SelectedItem.Text;
        lblPaymentID.Text = ddlBookingID.SelectedItem.Value;

        GridView1.Visible = true;
    }
}