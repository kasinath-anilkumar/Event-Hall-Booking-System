using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Contact : System.Web.UI.Page
{
    DataTable dt = new DataTable();
    eventbooking eb = new eventbooking();

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string qry1 = "insert into ContactUs values('" + ContactName.Text + "','" + ContactPhno.Text + "','" + ContactEmail.Text + "','" + ContactEnquiry.Text + "')";
        dt = eb.dbSelect(qry1);
        Response.Write("<script>alert('Request Submitted...........')</script>");
        Response.Write("<script>window.location.href='Contact.aspx';</script>");
    }
}