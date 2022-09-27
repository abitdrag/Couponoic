using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Business.Logic;
using System.Data;

public partial class CompanyFranchisee : System.Web.UI.Page
{
    public int CompanyID;
    protected void Page_Load(object sender, EventArgs e)
    {
        CompanyID = Convert.ToInt32(Session["AppUserID"]);
        DataTable dt1=new AppUserLogic().ListMyFranchisees(CompanyID);
        rpteFranchisees.DataSource = dt1;
        rpteFranchisees.DataBind();

        DataTable dt;
        if (!IsPostBack)
        {

            dt = new StateLogic().GetAllStates();
            ddlState.DataSource = dt;

            ddlState.DataTextField = dt.Columns["StateName"].ToString();
            ddlState.DataValueField = dt.Columns["StateID"].ToString();
            ddlState.DataBind();

            ddlState.SelectedIndex = -1;
            ddlState.Items.Insert(0, "-----Select-----");

        }
    }

    protected void btnSaveDetails_Click(object sender, EventArgs e)
    {
        AppUser au = new AppUser();
        au.Name = txtName.Text;
        au.Address = txtAddress.Text;
        au.City = ddlCity.SelectedItem.Text;
        au.State = ddlState.SelectedItem.Text;
        au.Email = txtEmail.Text;
        au.Mobile = txtMobile.Text;
        au.Username = txtUsername.Text;
        au.Password = txtPassword.Text;
        au.Type = "Franchisee";
        au.LastLoginTime = DateTime.Now;
        au.LoginCount = 0;
        au.Photo = "NA";
        au.ThumbnailPhoto = "NA";
        au.Status = "Active";
        au.CompanyID = CompanyID;
        au.RegistrationTime = DateTime.Now;
        au.PayPalAccount = "NA";

        new AppUserLogic().Insert(au);
        Page_Load(new Object(), new EventArgs());
    }

    protected void btnDelete_Click(object sender, EventArgs e)
    {

        LinkButton btn = (LinkButton)sender;
        int UID = Convert.ToInt32(btn.CommandArgument);
        new AppUserLogic().Delete(UID);

    }

    protected void ddlState_SelectedIndexChanged(object sender, EventArgs e)
    {
        int StateID = int.Parse(ddlState.SelectedValue.ToString());
        DataTable dt1 = new CityLogic().DisplayCities(StateID);
        ddlCity.DataSource = dt1;

        ddlCity.DataTextField = dt1.Columns["CityName"].ToString();
        ddlCity.DataBind();
    }

}