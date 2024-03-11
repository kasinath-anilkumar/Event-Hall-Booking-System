using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class CustomerFacilityBookingPayment : System.Web.UI.Page
{
    DataTable dt = new DataTable();
    eventbooking eb = new eventbooking();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            lblMobileNum.Text = Session["MobileNumber"].ToString();
            string qry1 = "select * from CustomerTBL where MobileNum='" + lblMobileNum.Text + "'";
            dt = eb.dbSelect(qry1);

            lblName.Text = dt.Rows[0]["Name"].ToString();

            string PaymentStatus = "PENDING";
            string qry2 = "SELECT FacilityPaymentTBL.BookingID, FacilityPaymentTBL.FacilityPaymentID FROM FacilityPaymentTBL INNER JOIN FacilitybookingTBL ON FacilityPaymentTBL.BookingID = FacilitybookingTBL.FacilityBookingID where FacilitybookingTBL.MobileNum='" + lblMobileNum.Text + "' and FacilityPaymentTBL.PaymentStatus='" + PaymentStatus + "'";
            dt = eb.dbSelect(qry2);

            ddlBookingID.DataSource = dt;
            ddlBookingID.DataBind();
            ddlBookingID.DataTextField = "BookingID";
            ddlBookingID.DataValueField = "FacilityPaymentID";
            ddlBookingID.DataBind();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Panel2.Visible = true;
        lblBookingID.Text = ddlBookingID.SelectedItem.Text;
        lblPaymentID.Text = ddlBookingID.SelectedItem.Value;

        GridView1.Visible = true;
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int rowno = Convert.ToInt32(e.CommandArgument.ToString());
        int PaymentID = Convert.ToInt32(GridView1.DataKeys[rowno].Value.ToString());
        string str = e.CommandName.ToString();
        if (str == "pay")
        {
            string PaymentStatus = "PAID";
            string PaymentDate = System.DateTime.Now.ToShortDateString();
            string qry3 = "update FacilityPaymentTBL set PaymentStatus='" + PaymentStatus + "',PaymentDate='" + PaymentDate + "' where FacilityPaymentID='" + PaymentID + "'";
            eb.dbExecute(qry3);

            string qry4 = "update FacilitybookingTBL set BookingStatus='" + PaymentStatus + "' where FacilityBookingID='" + lblBookingID.Text + "'";
            eb.dbExecute(qry4);

            Response.Write("<script>alert ('Done.......')</script>");
            Response.Write("<script>window.location.href='CustomerPayment.aspx';</script>");
        }
    }
}