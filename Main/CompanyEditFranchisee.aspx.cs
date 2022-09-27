using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Business.Logic;

public partial class CompanyEditFranchisee : System.Web.UI.Page
{   
    public int CompanyID, FranchiseeID;
    protected void Page_Load(object sender, EventArgs e)
    {
        CompanyID = Convert.ToInt32(Session["AppUserID"]);
        FranchiseeID = Convert.ToInt32(Request.QueryString["ID"]);
        AppUser f=new AppUserLogic().SelectByID(FranchiseeID);
        if (!Page.IsPostBack)
        {
            txtName.Text = f.Name;
            txtAddress.Text = f.Address;
            txtCity.Text = f.City;
            txtState.Text = f.State;
            txtEmail.Text = f.Email;
            txtMobile.Text = f.Mobile;
            txtUsername.Text = f.Username;
            txtPassword.Text = f.Password;
            txtNPassword.Text = f.Password;
        }
    }
    protected void btnSaveDetails_Click(object sender, EventArgs e)
    {
        //LinkButton btn = (LinkButton)sender;
        //int fID = Convert.ToInt32(btn.CommandArgument);
        int fID = FranchiseeID;
        AppUser au = new AppUserLogic().SelectByID(fID);
        au.Name = txtName.Text;
        au.Address = txtAddress.Text;
        au.City = txtCity.Text;
        au.State = txtState.Text;
        au.Email = txtEmail.Text;
        au.Mobile = txtMobile.Text;
        au.Username = txtUsername.Text;
        au.Password = txtNPassword.Text;
        
        new AppUserLogic().Update(au);
        Response.Redirect("CompanyFranchisee.aspx");
    }
    protected void lbtnRefresh_Click(object sender, EventArgs e)
    {
        Response.Redirect("CompanyEditFranchisee.aspx?ID=" + FranchiseeID);
    }
    protected void lbtnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("CompanyFranchisee.aspx");
    }
}