using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Business.Logic;

public partial class CustomerSearchUser : System.Web.UI.Page
{
    AppUserLogic AUL = new AppUserLogic();
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void btnSearch_Click(object sender, EventArgs e)
    {
        DataTable dt = AUL.Search(txtSearch.Text, txtCity.Text, ddlType.SelectedValue);
        GridView1.DataSource = dt;
        GridView1.DataBind();

    }

    protected void btnlb1_Click(object sender, EventArgs e)
    {
        LinkButton btn = (LinkButton)sender;
        
        Response.Redirect("CustomerViewProfile.aspx?ID="+btn.CommandArgument);
        
    }
}