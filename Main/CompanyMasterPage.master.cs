using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Business.Logic;

public partial class CompanyMasterPage : System.Web.UI.MasterPage
{
    string MAppUserName, MAppUserPhoto;
    int MAppUserID;
    public static int AffiliateID;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["AppUserID"] == null)
        {
            Response.Redirect("index.aspx");
        }
        MAppUserID = Convert.ToInt32(Session["AppuserID"]);
        AppUser au = new AppUser();
        au = new AppUserLogic().SelectByID(MAppUserID);
        MAppUserName = au.Name;
        MAppUserPhoto = au.Photo;
        imgPhoto.ImageUrl = MAppUserPhoto;
        MlblName.Text = MAppUserName;
    }

    public int getAffiliateID()
    {
        return AffiliateID;
    }

    public void setAffiliateID(int ID)
    {
        AffiliateID = ID;
    }
}
