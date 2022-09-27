using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Business.Logic;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        Session.Clear();
        
    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        String Username = txtUsername.Text;
        String Password = txtPassword.Text;

        AppUserLogic AL = new AppUserLogic();
       
        int AppUserID = AL.Login(Username, Password);
        if (AppUserID != 0)
        {
            AppUser au;
            Session["AppUserID"] = AppUserID;
            au = new AppUserLogic().SelectByID(AppUserID);

            if (au.Type.Equals("Admin"))
            {
                Response.Redirect("Home.aspx");
            }
            else if (au.Type.Equals("Customer"))
            {
                Response.Redirect("CustomerHome.aspx");
            }
            else if (au.Type.Equals("Company"))
            {
                if (au.Status.Equals("pending"))
                {
                    Response.Redirect("CompanyPending.aspx");
                }
                else
                {
                    Response.Redirect("Campaigns.aspx");
                }
            }
            else if (au.Type.Equals("Agent"))
            {
                Response.Redirect("AffiliateHome.aspx");
            }
            else if (au.Type.Equals("Franchisee"))
            {
                Response.Redirect("FranchiseeRedeemCoupon.aspx");
            }
        }
        else
        {
            Response.Redirect("login.aspx");
        }
    }
}