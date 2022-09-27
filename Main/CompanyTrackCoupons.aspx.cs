using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Business.Logic;
using System.Data;

public partial class CompanyTrackCoupons : System.Web.UI.Page
{
    public string CampaignName;
    public int CampaignID;
    protected void Page_Load(object sender, EventArgs e)
    {
        CampaignID = Convert.ToInt32(Request.QueryString["ID"]);
        CampaignID = 38;
        CampaignName=new CampaignLogic().SelectByID(CampaignID).Name;
        DataTable dt= new CampaignLogic().TrackMyAllCoupons(CampaignID);
        GridView1.DataSource =dt;
        GridView1.DataBind();

        for (int i = 0; i < dt.Rows.Count; i++)
        {
            
        }
    }
}