using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Business.Logic;
using System.Data;

public partial class ViewAffiliates : System.Web.UI.Page
{
    DataTable dt, dt1,dt2;
    int count, CampaignID,AffiliateID1;
    DropDownList ddl;
    int AffiliateID,NoOfCoupons;
    protected void Page_Load(object sender, EventArgs e)
    {
        CampaignID = Convert.ToInt32(Request.QueryString["ID"]);
        dt = new AppUserLogic().ViewAffiliates(Convert.ToInt32(Session["AppUserID"]), CampaignID, "");

      
         
        Repeater1.DataSource = dt;
        Repeater1.DataBind();

    }
  
    protected void GridView1_RowCommand(object sender, RepeaterCommandEventArgs e)
    {
        int id = Convert.ToInt32(Request.QueryString["ID"]);
        
       
        if (e.CommandName == "Select")
        {
            AppUserLogic al = new AppUserLogic();
            LinkButton lnkView = (LinkButton)e.CommandSource;
            AffiliateID = Convert.ToInt32(e.CommandArgument);
            dt1 = new CouponLogic().DisplayCoupons(AffiliateID, CampaignID);
            if (dt.Rows.Count > 0)
            {
                Repeater2.DataSource = dt1;
                Repeater2.DataBind();
            }
        }

        for (int i = 0; i < Repeater2.Items.Count; i++)
        {
            //HiddenField hdn = (HiddenField)Repeater1.Items[i].FindControl("hdnAffiliateID");
            Label lblNoOfCoupons = (Label)Repeater2.Items[i].FindControl("lblNoOfCoupons");
            //AffiliateID = Convert.ToInt32(hdn.Value);
            dt2 = new CouponLogic().NumberOfRows(AffiliateID, CampaignID);
            count = dt2.Rows.Count;
            lblNoOfCoupons.Text = "" + count;
            ddl = (DropDownList)Repeater2.Items[i].FindControl("DropDownList1");



        }

        for (int i = 1; i <= count; i++)
        {

            ddl.Items.Add(i + "");

        }
        AffiliateID1 = AffiliateID;

    }

    protected void GridView2_RowCommand(object sender, RepeaterCommandEventArgs e) 
    {

        

        if (e.CommandName == "Buy")
        {
            

            AppUserLogic al = new AppUserLogic();
            LinkButton lnkView = (LinkButton)e.CommandSource;

            String s = lnkView.CommandArgument;
            AffiliateID = Convert.ToInt32(s);
            for (int i = 0; i < Repeater2.Items.Count; i++)
            {
                //HiddenField hdn = (HiddenField)Repeater1.Items[i].FindControl("hdnAffiliateID");
               
                //AffiliateID = Convert.ToInt32(hdn.Value);
               
              
                ddl = (DropDownList)Repeater2.Items[i].FindControl("DropDownList1");
                
                 
                //Method for buying
            }
            NoOfCoupons = int.Parse(ddl.SelectedItem.ToString());
         
            
            new CouponLogic().BuyCoupons(Convert.ToInt32(Session["AppUserID"]), CampaignID, AffiliateID, NoOfCoupons);

            
            
        }

        Response.Redirect("ViewAffiliates.aspx?ID=" + CampaignID);
    
    
    }
    
}