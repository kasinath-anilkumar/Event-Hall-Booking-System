using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class CustomerPayment : System.Web.UI.Page
{
    DataTable dt = new DataTable();
    eventbooking eb = new eventbooking();
    protected void Page_Load(object sender, EventArgs e)
    {
        lblMobileNum.Text = Session["MobileNumber"].ToString();
        string qry1 = "select * from CustomerTBL where MobileNum='" + lblMobileNum.Text + "'";
        dt = eb.dbSelect(qry1);

        lblName.Text = dt.Rows[0]["Name"].ToString();
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("CustomerHallBookingPayment.aspx");
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("CustomerHallBookingPaymentHistory.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("CustomerFacilityBookingPayment.aspx");
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        Response.Redirect("CustomerFacilityBookingPaymentHistory.aspx");
    }
    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        Response.Redirect("CustomeFeedBack.aspx");
    }
}