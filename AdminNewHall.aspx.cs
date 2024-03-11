using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class AdminNewHall : System.Web.UI.Page
{
    DataTable dt = new DataTable();
    eventbooking eb = new eventbooking();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string qry1 = "select count(*) from HallTBL where Hall='" + txtHallName.Text + "'";
        int a = Convert.ToInt32(eb.dbScalar(qry1));
        if (a == 0)
        {

            string ImagePath1 = "~/HallImage1/" + fupImage1.FileName;
            string ImagePath2 = "~/HallImage2/" + fupImage2.FileName;
            string ImagePath3 = "~/HallImage3/" + fupImage3.FileName;
            string ImagePath4 = "~/HallImage4/" + fupImage4.FileName;

            string qry2 = "insert into HallTBL values('" + ddlCity.SelectedItem.Text + "','" + txtHallName.Text + "','" + txtAddress.Text + "','" + txtCapacity.Text + "','" + txtParking.Text + "','" + txtTime.Text + "','" + rblHallType.SelectedItem.Text + "','" + rblOutFood.SelectedItem.Text + "','" + rblOutDecor.SelectedItem.Text + "','" + txtPolicy.Text + "','" + txtRent.Text + "','" + ImagePath1 + "','" + ImagePath2 + "','" + ImagePath3 + "','" + ImagePath4 + "')";
            eb.dbExecute(qry2);

            fupImage1.PostedFile.SaveAs(Server.MapPath(ImagePath1));
            fupImage2.PostedFile.SaveAs(Server.MapPath(ImagePath2));
            fupImage3.PostedFile.SaveAs(Server.MapPath(ImagePath3));
            fupImage4.PostedFile.SaveAs(Server.MapPath(ImagePath4));

            Response.Write("<script>alert('Hall Added...........')</script>");
            Response.Write("<script>window.location.href='AdminNewHall.aspx';</script>");
        }
        else
        {
            Response.Write("<script>alert('Hall Already Added...........')</script>");
            Response.Write("<script>window.location.href='AdminNewHall.aspx';</script>");
        }
       
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdminViewHall.aspx");
    }
}