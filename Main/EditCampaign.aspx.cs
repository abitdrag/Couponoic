using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Business.Logic;

public partial class EditCampaign : System.Web.UI.Page
{
    public int CampaignID,CompanyID;
    protected void Page_Load(object sender, EventArgs e)
    {
        CampaignID = Convert.ToInt32(Request.QueryString["ID"]);
        CompanyID = Convert.ToInt32(Session["AppUserID"]);
        
    }
    
}