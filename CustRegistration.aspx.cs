using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class CustRegistration : System.Web.UI.Page
{
    DataTable dt = new DataTable();
    eventbooking eb = new eventbooking();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
         int a;
         string qry1 = "select count(*) from CustomerTBL where MobileNum='" + txtMobile.Text + "'";
        a = Convert.ToInt32(eb.dbScalar(qry1));

        if (a == 0)
        {
            int UserType = 2;

            string IDPRoofPath = "~/IDProof/" + fupIDProof.FileName;
            string qry2 = "insert into CustomerTBL values('" + txtName.Text + "','" + RadioButtonList1.SelectedItem.Text + "','" + txtDoB.Text + "','" + txtAddress.Text + "','" + txtEmail.Text + "','" + IDPRoofPath + "','" + txtMobile.Text + "')";
            eb.dbExecute(qry2);
            fupIDProof.PostedFile.SaveAs(Server.MapPath(IDPRoofPath));

            string qry3 = "insert into LoginTBL values('" + txtMobile.Text + "','" + txtPwd.Text + "','"+UserType+"')";
            eb.dbExecute(qry3);

            Response.Write("<script>alert('Customer Added...........')</script>");
            Response.Write("<script>window.location.href='Login.aspx';</script>");
        }
        else
        {
            Response.Write("<script>alert('Customer Already Added...........')</script>");
            Response.Write("<script>window.location.href='CustRegistration.aspx';</script>");
        }
    }
}