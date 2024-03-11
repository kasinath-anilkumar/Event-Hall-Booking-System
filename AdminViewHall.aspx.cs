using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminViewHall : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        lblHallNum.Text = ddlHallNum.SelectedItem.Text;
        Panel1.Visible = true;
    }
    protected void ddlHallNum_TextChanged(object sender, EventArgs e)
    {
        
    }
}