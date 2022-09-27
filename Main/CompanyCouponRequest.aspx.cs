using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Business.Logic;
using System.Data;

public partial class CompanyCouponRequest : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataTable dt = new CouponRequestLogic().ViewRequests(Convert.ToInt32(Session["AppUserID"]));
        Repeater1.DataSource = dt;
        Repeater1.DataBind();

    }

    protected void btnApprove_Click(object sender, EventArgs e)
    {
        LinkButton btn = (LinkButton)sender;
        int ID = Convert.ToInt32(btn.CommandArgument);
        CouponRequest CR = new CouponRequestLogic().SelectByID(ID);
        new CouponRequestLogic().ActOnRequest(ID);
        new CompanyMasterPage().setAffiliateID(CR.AffiliateID);
        Response.Redirect("CompanyDistributeCoupons.aspx?ID="+CR.CampaignID);
    }

    protected void btnReject_Click(object sender, EventArgs e)
    {
        LinkButton btn = (LinkButton)sender;
        int ID = Convert.ToInt32(btn.CommandArgument);
        new CouponRequestLogic().ActOnRequest(ID);
        Page_Load(sender, e);
    }
}