using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Business.Logic;
using System.Data;

public partial class AffiliateWallet : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        AppUserLogic al = new AppUserLogic();
        CouponLogic cl = new CouponLogic();
        int id = Convert.ToInt32(Session["AppUserID"]);
        AppUser au = al.SelectByID(id);


        DataTable dt = cl.DisplayAffiliateWallet(id);
        //Repeater1.DataSource = dt;
        campaigns1.DataSource = dt;

        //Repeater1.DataBind();
        campaigns1.DataBind();


        for (int i = 0; i < campaigns1.Items.Count; i++)
        {
            LinkButton btn = (LinkButton)campaigns1.Items[i].FindControl("btnRequest");
            Campaign c=new CampaignLogic().SelectByID(Convert.ToInt32(dt.Rows[i]["CampaignID"]));
            DataTable dt1 = new CouponRequestLogic().ViewRequestStatus(c.CampaignID, Convert.ToInt32(Session["AppUserID"]));
            if (dt1.Rows.Count > 0)
            {
                btn.Text = "Coupons Requested";
            }
            else
            {
                btn.Text = "Request for Coupons";
            }
            HiddenField hdn = (HiddenField)campaigns1.Items[i].FindControl("HiddenField1");
            Label lblNoOfCoupons = (Label)campaigns1.Items[i].FindControl("lblNoOfCoupons");
            DataTable dt2 = new CouponLogic().NumberOfRows(id, Convert.ToInt32(hdn.Value));
            lblNoOfCoupons.Text = "" + dt2.Rows.Count;

        }

    }

    protected void btnRequest_Click(object sender, EventArgs e)
    {
        LinkButton btn = (LinkButton)sender;
        int CampaignID = Convert.ToInt32(btn.CommandArgument);
        CouponRequest CR = new CouponRequest();
        CR.AffiliateID=Convert.ToInt32(Session["AppUserID"]);
        CR.CampaignID = CampaignID;
        Campaign c = new CampaignLogic().SelectByID(CampaignID);
        CR.CompanyID = c.CompanyID;
        CR.Status = "Pending";
        new CouponRequestLogic().Insert(CR);
        Page_Load(sender, e);
    }

}
  
