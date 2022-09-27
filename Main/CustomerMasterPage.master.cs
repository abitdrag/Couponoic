using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Business.Logic;


public partial class CustomerMasterPage : System.Web.UI.MasterPage
{
    public int AffiliateID;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["AppUserID"] == null)
        {
            Response.Redirect("index.aspx");
        }
        
        int AppUserID = Convert.ToInt32(Session["AppUserID"]);
        AppUser au = new AppUserLogic().SelectByID(Convert.ToInt32(Session["AppUserID"]));
        lblName.Text = " " + au.Name;
        imgPhoto.ImageUrl = au.Photo;
    }
}
