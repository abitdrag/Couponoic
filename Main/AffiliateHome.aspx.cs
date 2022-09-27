using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Business.Logic;
using System.Data.SqlClient;
using System.Data;

public partial class AffiliateHome : System.Web.UI.Page
{
    int x,id;
    DataTable dt1;
    protected void Page_Load(object sender, EventArgs e)
    {
        AppUserLogic al = new AppUserLogic();
        CampaignLogic cl = new CampaignLogic();
         id=Convert.ToInt32(Session["AppUserID"]);
        AppUser au = al.SelectByID(id);
        //int CompanyID = au.CompanyID;
        //DataTable dt = al.ListMyCampaigns(CompanyID);

        DataTable dt = cl.ListAllAffiliateCampaigns(id);
        if (dt.Rows.Count > 0)
        {
           int CompanyID = Convert.ToInt32(dt.Rows[0]["CompanyID"]);

        }

        campaigns1.DataSource = dt;
        campaigns1.DataBind();
        dt1 = al.DisplayCompanies(id);
        Repeater2.DataSource = dt1;
        Repeater2.DataBind();




      
    }

    protected void Repeater2_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        //int AffiliateID = Convert.ToInt32(Session["AppUserID"]);

        if (e.CommandName == "Select")
        {
            
            AppUserLogic al = new AppUserLogic();
            LinkButton lnkView = (LinkButton)e.CommandSource;
            String s = lnkView.CommandArgument;
            AppUser au = al.SelectByID(Convert.ToInt32(e.CommandArgument));
            int CompanyID = au.AppUserID;
            x = new CompanyAffiliateLogic().AffiliateRequest(CompanyID,id);
            Response.Redirect("AffiliateHome.aspx");
            
        }
        

    }

    protected void btnRequest_Click(object sender, EventArgs e)
    {
        LinkButton btn = (LinkButton)sender;
        Campaign C=new CampaignLogic().SelectByID(Convert.ToInt32(btn.CommandArgument));
        CouponRequest CR = new CouponRequest();
        CR.AffiliateID=Convert.ToInt32(Session["AppUserID"]);
        CR.CompanyID = C.CompanyID;
        CR.CampaignID = C.CampaignID;
        new CouponRequestLogic().Insert(CR);
        btn.Text = "Coupons Requested";
        
    }
}