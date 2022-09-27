using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Business.Logic;

public partial class idea_AllCampaigns : System.Web.UI.Page
{
    int x, CustomerId, CampaignID, CompanyID, count = 0;
    int[] Company_ID;
    int[] Campaign_ID_;
    DataTable dt1, dt;
    DropDownList ddl;
    int id;
    protected void Page_Load(object sender, EventArgs e)
    {
        AppUserLogic al = new AppUserLogic();
        CouponLogic cl = new CouponLogic();
        CustomerId = Convert.ToInt32(Session["AppUserID"]);
        AppUser au = al.SelectByID(CustomerId);
        id = Convert.ToInt32(Request.QueryString["ID"]);
       
        dt = cl.DisplayAffiliateWallet(id);
        Repeater1.DataSource = dt;


        Repeater1.DataBind();


        for (int i = 0; i < Repeater1.Items.Count; i++)
        {
            HiddenField hdn = (HiddenField)Repeater1.Items[i].FindControl("HiddenField1");
            Label lblNoOfCoupons = (Label)Repeater1.Items[i].FindControl("lblNoOfCoupons");
            DataTable dt2 = new CouponLogic().NumberOfRows(id, Convert.ToInt32(hdn.Value));
            count = dt2.Rows.Count;
            lblNoOfCoupons.Text = dt2.Rows.Count.ToString();
            ddl = (DropDownList)Repeater1.Items[i].FindControl("DropDownList1");

            for (int j = 1; j <= count; j++)
            {
                ddl.Items.Add(j.ToString());
            }
            
        }
       

    }


    protected void Repeater2_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        HiddenField h;
        int Campaign_ID = 0;
        int AffiliateID = Convert.ToInt32(Session["AppUserID"]);
        for (int i = 0; i < Repeater1.Items.Count; i++)
        {
            h = (HiddenField)Repeater1.Items[i].FindControl("hdnCoupon");
            ddl = (DropDownList)Repeater1.Items[i].FindControl("DropDownList1");
            //Campaign_ID =Convert.ToInt32(h.Value);

        }
        if (e.CommandName == "Select")
        {

            AppUserLogic al = new AppUserLogic();
            LinkButton lnkView = (LinkButton)e.CommandSource;
            Campaign_ID = Convert.ToInt32(e.CommandArgument);
            String s = lnkView.CommandArgument;

            
            int NoOfCoupons = Convert.ToInt32(ddl.SelectedItem.Text);

            //Method for buying
            new CouponLogic().BuyCoupons(CustomerId, Campaign_ID, id, NoOfCoupons);

        }

        Page_Load(source,e);
    }
    
}