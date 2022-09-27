using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Business.Logic;
using System.Data;

public partial class CompanyAffiliateRequests : System.Web.UI.Page
{
    public int AppUserID;
    protected void Page_Load(object sender, EventArgs e)
    {
        AppUserID = Convert.ToInt32(Session["AppUserID"]);
        AppUserLogic al = new AppUserLogic();
        DataTable dt = al.DisplayAffiliateRequests(AppUserID);
        GridView1.DataSource = dt;
        GridView1.DataBind();
        if (GridView1.Rows.Count == 0)
        {
            lblNUll.Text = "<h4>No Requests available</h4>";
        }
    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Select")
        {
            AppUserLogic al = new AppUserLogic();
            LinkButton lnkView = (LinkButton)e.CommandSource;
            String s = lnkView.CommandArgument;
            int AID = Convert.ToInt32(e.CommandArgument);
            int x = al.ApproveAffiliateRequest(AID, AppUserID);
            Response.Redirect("CompanyAffiliateRequests.aspx");
        }

        if (e.CommandName == "Deny")
        {
            AppUserLogic al = new AppUserLogic();
            LinkButton lnkView = (LinkButton)e.CommandSource;
            String s = lnkView.CommandArgument;
            int AID = Convert.ToInt32(e.CommandArgument);
            int x = al.DeleteAffiliateRequest(AID, AppUserID);
            Response.Redirect("CompanyAffiliateRequests.aspx");


        }


    }
}