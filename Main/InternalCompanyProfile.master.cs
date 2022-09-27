using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Business.Logic;

public partial class InternalCompanyProfile : System.Web.UI.MasterPage
{
    public string MyName,MyPhoto;
    public int MyID;
    protected void Page_Load(object sender, EventArgs e)
    {
        AppUser au = new AppUser();
        au = new AppUserLogic().SelectByID(Convert.ToInt32(Session["AppUserID"]));
        MyName = au.Name;
        MyID = au.AppUserID;
        MyPhoto = au.Photo;
        this.DataBind();
    }
}
