using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class CustomerViewBooking : System.Web.UI.Page
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
    protected void Button1_Click(object sender, EventArgs e)
    {
    
        Panel2.Visible = true;
        lblBookingID.Text = ddlBookingID.SelectedItem.Text;
        lblHallNum.Text = ddlBookingID.SelectedItem.Value;
    }


    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("CustomeFeedBack.aspx");
    }

    protected void LinkButton1_Click1(object sender, EventArgs e)
    {

    }
    protected void ddlBookingID_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click2(object sender, EventArgs e)
    {

    }
    protected void btnfeedback_Click(object sender, EventArgs e)
    {
        Panel3.Visible = true;
    }
    protected void btnfeedsub_Click(object sender, EventArgs e)
    {
        string qry2 = "insert into FeedbackTBL values ('" + lblMobileNum.Text + "','" + lblName.Text + "','" + lblBookingID.Text + "','" + lblHallNum.Text + "','" + txtfeed.Text + "')";
        eb.dbExecute(qry2);

        Response.Write("<script>alert('FeedBack Sent Sucessfully...........')</script>");
        Response.Write("<script>window.location.href='CustomerViewBooking.aspx';</script>");
    }
}