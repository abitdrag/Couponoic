using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Business.Logic;

public partial class AffiliateProfile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int AppUserID = Convert.ToInt32(Session["AppUserID"]);
        AppUser au = new AppUserLogic().SelectByID(Convert.ToInt32(Session["AppUserID"]));
        lblName.Text = " " + au.Name;
        lblFName.Text = " " + au.Name;
        lblEmail.Text = "" + au.Email;
        lblPhone.Text = "" + au.Mobile;
    }
}