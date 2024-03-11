using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class AdminChangePassword : System.Web.UI.Page
{
    DataTable dt = new DataTable();
    eventbooking eb = new eventbooking();
    protected void Page_Load(object sender, EventArgs e)
    {
        lblMobile.Text = Session["MobileNumber"].ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (txtNewPWd.Text == txtCnfPwd.Text)
        {
            string qry1 = "select * from LoginTBL where MobileNum='" + lblMobile.Text + "'";
            dt = eb.dbSelect(qry1);
            string CrPwd = dt.Rows[0]["Password"].ToString();

            if (CrPwd == txtCrPwd.Text)
            {
                string qry2 = "update LoginTBL set Password='" + txtNewPWd.Text + "' where MobileNum='" + lblMobile.Text + "'";
                eb.dbExecute(qry2);

                Response.Write("<script>alert('Password Changed...Login Agin Now.....')</script>");
                Response.Write("<script>window.location.href='Login.aspx';</script>");
            }
            else
            {
                Response.Write("<script>alert('Current Password Mismatch')</script>");
                Response.Write("<script>window.location.href='AdminChangePassword.aspx';</script>");
            }
        }
        else
        {
            Response.Write("<script>alert('Password Mismatch')</script>");
            Response.Write("<script>window.location.href='AdminChangePassword.aspx';</script>");
        }
    }
}