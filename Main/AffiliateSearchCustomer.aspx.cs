using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Business.Logic;

public partial class AffiliateSearchUser : System.Web.UI.Page
{
    AppUserLogic AUL = new AppUserLogic();
    protected void Page_Load(object sender, EventArgs e)
    {
        //DataTable dt = AUL.SelectAll();
        //GridView1.DataSource = dt;
        //GridView1.DataBind();
    }


    protected void btnSearch_Click(object sender, EventArgs e)
    {
        DataTable dt = AUL.MyCustomers(txtSearch.Text, txtCity.Text,Convert.ToInt32(Session["AppUserID"]));
        GridView1.DataSource = dt;
        GridView1.DataBind();
        if (dt.Rows.Count == 0)
        {
            lblNoResults.Visible = true;
        }
    }

    protected void btnlb1_Click(object sender, EventArgs e)
    {
        LinkButton btn = (LinkButton)sender;
        Response.Redirect("AffiliateViewProfile.aspx?ID=" + btn.CommandArgument);
    }
    


}