using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Login : System.Web.UI.Page
{
    DataTable dt = new DataTable();
    eventbooking eb = new eventbooking();

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int a;
        string qry1 = "select count(*) from LoginTBL where MobileNum='" + txtMob.Text + "' and Password='" + txtPwd.Text + "'";
        a = Convert.ToInt32(eb.dbScalar(qry1));

        if(a==1)
        {
            string qry2 = "select * from LoginTBL where MobileNum='" + txtMob.Text + "' and Password='" + txtPwd.Text + "'";
            dt = eb.dbSelect(qry2);

            int Role = Convert.ToInt32(dt.Rows[0]["UserType"].ToString());
            Session["MobileNumber"] = txtMob.Text;

            if (Role == 1)
            {
                Response.Redirect("AdminHome.aspx");
            }
            else if (Role == 2)
            {
                Response.Redirect("CustomerHome.aspx");
            }
            
        }
        else
        {
            Response.Write("<script>alert('Not registerd User')</script>");
            Response.Write("<script>window.location.href='Login.aspx';</script>");
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("CustRegistration.aspx");
    }
}