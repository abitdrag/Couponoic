using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Business.Logic;

public partial class AffiliateEditProfile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int AppUserID = Convert.ToInt32(Session["AppUserID"]);
        AppUser au = new AppUserLogic().SelectByID(Convert.ToInt32(Session["AppUserID"]));
        lblName.Text = " " + au.Name;
        txtName.Text = " " + au.Name;
        txtEmail.Text = "" + au.Email;
        txtMobile.Text = "" + au.Mobile;
        txtArea.Text = au.Address;
        txtCity.Text = au.City;
        txtState.Text = au.State;
    }


    protected void btnSave_Click(object sender, EventArgs e)
    {
        AppUser au = new AppUserLogic().SelectByID(Convert.ToInt32(Session["AppUserID"]));
        au.Name = txtName.Text;
        au.Email = txtEmail.Text;
        au.Mobile = txtMobile.Text;
        au.Address = txtArea.Text;
        au.City = txtCity.Text;
        au.State = txtState.Text;

        int n = new AppUserLogic().Update(au);
    }
    protected void btnSavePass_Click(object sender, EventArgs e)
    {
        AppUser au = new AppUserLogic().SelectByID(Convert.ToInt32(Session["AppUserID"]));
        au.Password = txtNewPass.Text;
        int n = new AppUserLogic().Update(au);
    }
}