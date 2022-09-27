using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Business.Logic;

public partial class CompanyViewRequests : System.Web.UI.Page
{
    int CompanyID;
    DataTable dt;
    protected void Page_Load(object sender, EventArgs e)
    {
        CompanyID = Convert.ToInt32(Session["AppUserID"]);
        AppUserLogic al = new AppUserLogic();
        dt = al.DisplayAffiliateRequests(CompanyID);

        int count = dt.Rows.Count;
        GridView1.DataSource = dt;
        GridView1.DataBind();

    }


    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Select")
        {
            AppUserLogic al = new AppUserLogic();
            LinkButton lnkView = (LinkButton)e.CommandSource;
            String s = lnkView.CommandArgument;
            AppUser au = al.SelectByID(Convert.ToInt32(e.CommandArgument));
            int id = Convert.ToInt32(e.CommandArgument);

            int x = al.ApproveAffiliateRequest(au, id);
            Response.Redirect("CompanyViewRequests.aspx");
        }

        if (e.CommandName == "Deny")
        {
            AppUserLogic al = new AppUserLogic();
            LinkButton lnkView = (LinkButton)e.CommandSource;
            String s = lnkView.CommandArgument;
            AppUser au = al.SelectByID(Convert.ToInt32(e.CommandArgument));
            int id = Convert.ToInt32(e.CommandArgument);
            int Cid = Convert.ToInt32(Session["AppUserID"]);
            int x = al.DeleteAffiliateRequest(Cid, id);
            Response.Redirect("CompanyViewRequests.aspx");


        }

    }
}