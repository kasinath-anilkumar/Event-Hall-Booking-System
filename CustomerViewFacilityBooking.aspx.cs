using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class CustomerViewFacilityBooking : System.Web.UI.Page
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
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        lblFacilityBookingID.Text = ddlBookingID.SelectedItem.Text;
        GridView1.Visible = true;
    }
}