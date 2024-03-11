using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class AdminVenueCity : System.Web.UI.Page
{
    DataTable dt = new DataTable();
    eventbooking eb = new eventbooking();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string qry1 = "select count(*) from VenueCityTBL where City='" + txtCity.Text + "'";
        int a = Convert.ToInt32(eb.dbScalar(qry1));
        if (a == 0)
        {
            string qry2 = "insert into VenueCityTBL values('"+txtCity.Text+"','"+txtDistrict.Text+"')";
            eb.dbExecute(qry2);

            Response.Write("<script>alert('City Added...........')</script>");
            Response.Write("<script>window.location.href='AdminVenueCity.aspx';</script>");
        }
        else
        {
            Response.Write("<script>alert('City Already Added...........')</script>");
            Response.Write("<script>window.location.href='AdminVenueCity.aspx';</script>");
        }
    }
}