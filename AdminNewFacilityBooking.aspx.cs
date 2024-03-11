using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class AdminNewFacilityBooking : System.Web.UI.Page
{
    DataTable dt = new DataTable();
    eventbooking eb = new eventbooking();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int rowno = Convert.ToInt32(e.CommandArgument.ToString());
        int FacilityBookingID = Convert.ToInt32(GridView1.DataKeys[rowno].Value.ToString());
        string str = e.CommandName.ToString();
        if (str == "cfm")
        {
            Session["FacilityBookingID"] = FacilityBookingID.ToString();

            string BookingStatus = "APPROVE";
            string qry1 = "update FacilitybookingTBL set BookingStatus='" + BookingStatus + "' where FacilityBookingID='" + FacilityBookingID + "'";
            eb.dbExecute(qry1);

            Response.Redirect("AdminFacilityPayment.aspx");
        }
        else
        {
            string BookingStatus = "REJECT";
            string qry2 = "update FacilitybookingTBL set BookingStatus='" + BookingStatus + "' where FacilityBookingID='" + FacilityBookingID + "'";
            eb.dbExecute(qry2);

            Response.Write("<script>alert ('Done.......')</script>");
            Response.Write("<script>window.location.href='AdminBooking.aspx'</script>");
        }
    }
}