using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Business.Logic;

public partial class AffiliateSearchCompany : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSearch_Click(object sender, EventArgs e)
    {
        DataTable dt = new AppUserLogic().Search(txtSearch.Text, txtCity.Text, "Company");
        GridView1.DataSource = dt;
        GridView1.DataBind();

    }
    protected void btnlb1_Click(object sender, EventArgs e)
    {
        LinkButton btn = (LinkButton)sender;
        Response.Redirect("AffiliateViewProfile.aspx?ID=" + btn.CommandArgument);
}
}