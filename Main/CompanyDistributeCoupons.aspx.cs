using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Business.Logic;

public partial class CompanyDistributeCoupons : System.Web.UI.Page
{
    public int CampaignID, CompanyID;
    public DataTable dt1;
    protected void Page_Load(object sender, EventArgs e)
    {
        CampaignID = Convert.ToInt32(Request.QueryString["ID"]);
        CompanyID = Convert.ToInt32(Session["AppUserID"]);
        if (!IsPostBack)
        {
            DataTable dt = new AppUserLogic().ListMyAffiliates(CompanyID);
            AffiliateList.DataSource = dt;
            AffiliateList.DataTextField = "Name";
            AffiliateList.DataValueField = "AppUserID";
            AffiliateList.DataBind();

            DataTable dt2 = new AppUserLogic().ListCitiesOfMyAffiliates(CompanyID);
            ddlCity.DataSource = dt2;

            ddlCity.DataTextField = dt2.Columns["City"].ToString();
            ddlCity.DataBind();

            ddlCity.SelectedIndex = -1;
            ddlCity.Items.Insert(0, "-----Select-----");
        }
            dt1 = new AppUserLogic().ListMyAffiliatesWithNOC(CompanyID, CampaignID);
            gridTable.DataSource = dt1;
            gridTable.DataBind();
            rptrPieChart.DataSource = dt1;
            rptrPieChart.DataBind();
            
        
    }

    protected void btnSendToAffiliate_Click(object sender, EventArgs e)
    {
        int AffiliateID = Convert.ToInt32(AffiliateList.SelectedValue);
        CampaignID = Convert.ToInt32(Request.QueryString["ID"]);
        int NOC = Convert.ToInt32(txtNOC.Text);
        int p = new CampaignLogic().DistributeToAffiliate(AffiliateID, NOC, CampaignID);
        if (p == -1)
        {
            //Response.Redirect("CompanyDistributeCoupons.aspx?ID=" + CampaignID + "");
            Page_Load(new object(), new EventArgs());
        }
        else
        {
            if (p == 0)
            {
                lblHidden.Text = " No more Coupons available for this Campaign. All are distributed.";
               
            }
            else
            {
                lblHidden.Text = " Only " + p + " Coupons Available.";
                
            }
        }
        Response.Redirect("CompanyDistributeCoupons.aspx?ID=" + CampaignID + "");
    }

    protected void ddlCity_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlCity.SelectedIndex==0)
        {
            DataTable dt4 = new AppUserLogic().ListMyAffiliates(CompanyID);
            AffiliateList.DataSource = dt4;
            AffiliateList.DataTextField = "Name";
            AffiliateList.DataValueField = "AppUserID";
            AffiliateList.DataBind();
        }
        else
        {
            AffiliateList.DataSource = new AppUserLogic().ListMyAffiliates(CompanyID, ddlCity.SelectedItem.Text);
            AffiliateList.DataBind();
        }
        graphA.Visible = false;
    }

    protected void AffiliateList_SelectedIndexChanged(object sender, EventArgs e)
    {
        CompanyID = Convert.ToInt32(Session["AppUserID"]);
        int AffiliateID = Convert.ToInt32(AffiliateList.SelectedValue);
        AppUser auA = new AppUserLogic().SelectByID(AffiliateID);
        ddlCity.SelectedIndex = ddlCity.Items.IndexOf(ddlCity.Items.FindByText(auA.City));
        graphA.Visible = false;
    }
}