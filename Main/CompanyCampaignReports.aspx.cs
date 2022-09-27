using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Business.Logic;

public partial class CompanyCampaignReports : System.Web.UI.Page
{
    public int CampaignID, CompanyID, NOCCompany, NOCAffiliate, NOCCustomer, NOCFranchisee, NOCTotal;
    DataTable dt1, dt3;
    protected void Page_Load(object sender, EventArgs e)
    {
        CampaignID = Convert.ToInt32(Request.QueryString["ID"]);
        CompanyID = Convert.ToInt32(Session["AppUserID"]);
        Campaign c = new CampaignLogic().SelectByID(CampaignID);
        NOCTotal = c.NumberOfCoupons;

        dt1 = new AppUserLogic().ListMyAffiliatesWithNOC(CompanyID, CampaignID);
        rptrPieChart.DataSource = dt1;
        rptrPieChart.DataBind();

        int[] reports = new AppUserLogic().ReportOfCampaign(CampaignID, CompanyID);
        NOCCompany = reports[0];
        NOCAffiliate = reports[1];
        NOCCustomer = reports[2];
        NOCFranchisee = reports[3];

        dt3 = new AppUserLogic().RepoprtOfAffiliateForCampaign(CampaignID);
        SoldByAffiliate.DataSource = dt3;
        SoldByAffiliate.DataBind();

        if (dt1.Rows.Count == 0)
        {
            hidden1.Text = "No Coupon has been distributed to Affiliate yet.";
            
        }
        if (dt3.Rows.Count == 0)
        {
            hidden2.Text = "Coupons have not been distributed yet. No data to show";
            Hidden3.Text = "Coupons have not been distributed yet. No data to show";
        }
    }
}