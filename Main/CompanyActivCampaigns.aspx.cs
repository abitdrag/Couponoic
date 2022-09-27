using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Business.Logic;
using System.Data;

public partial class CompanyActivCampaigns : System.Web.UI.Page
{
    public string CompanyName, CompanyThumbnail;
    protected void Page_Load(object sender, EventArgs e)
    {
        AppUser au = new AppUserLogic().SelectByID(Convert.ToInt32(Session["AppUserID"]));
        CompanyName = au.Name;
        CompanyThumbnail = au.ThumbnailPhoto;
        DataTable dt = new AppUserLogic().ListMyActivCampaigns(Convert.ToInt32(Session["AppUserID"]));
        if (dt.Rows.Count == 0)
        {
            hiddenLabel.Text = "No Campaigns available to show";
        }
        campaigns1.DataSource = dt;
        campaigns1.DataBind();
    }
}