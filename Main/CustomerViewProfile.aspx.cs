using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Business.Logic;

public partial class CustomerViewProfile : System.Web.UI.Page
{
    public string AppUsername, AboutMe, AppUserAddress, AppUserCity, AppUserState, AppUserEmail, AppUserMobile, Name1, Email1, Phone1;
    public string Name2, Email2, Phone2, Name3, Email3, Phone3;
    public int CompanyID;
    AppUser Me;



    protected void Page_Load(object sender, EventArgs e)
    {
        int UID=Convert.ToInt32(Request.QueryString["ID"]);
        AppUser AU = new AppUserLogic().SelectByID(UID);
        if (AU.Type.Equals("Agent"))
        {
            btnGetCoupons.Visible = true;
        }

        int MyID = Convert.ToInt32(Session["AppUserID"]);
        Me = new AppUserLogic().SelectByID(MyID);
        if (Me.Type.Equals("Company") || Me.Type.Equals("Admin"))
        {
                btnGetCoupons.Visible = false;
        }

        imgDP.ImageUrl = AU.Photo;
        lblName.Text = AU.Name;
        lblEmail.Text = AU.Email;
        lblFName.Text = AU.Name;
        lblAddress.Text = AU.Address + ", " + AU.City + ", "+AU.State+".";
        lblPhone.Text = AU.Mobile;
        CompanyID = UID;
        AppUser au = new AppUserLogic().SelectByID(CompanyID);
        AppUsername = au.Name;
        AppUserAddress = au.Address;
        AppUserCity = au.City;
        AppUserState = au.State;
        AppUserEmail = au.Email;
        AppUserMobile = au.Mobile;
        CompanyContact cc = new CompanyContactLogic().SelectByCompanyID(CompanyID);
        AboutMe = cc.AboutMe;
        Name1 = cc.Name1;
        Email1 = cc.Email1;
        Phone1 = cc.Phone1;
        Name2 = cc.Name2;
        Email2 = cc.Email2;
        Phone2 = cc.Phone2;
        Name3 = cc.Name3;
        Email3 = cc.Email3;
        Phone3 = cc.Phone3;

        if(AU.Type.Equals("Company"))
        {
            company.Visible=true;
        }
        if (Me.Type.Equals("Admin"))
        {
            ff.Visible = false;
        }
        DataTable dt = new AppUserLogic().ListAllFeedbacks(CompanyID);
        rptr2.DataSource = dt;
        rptr2.DataBind();

    }

    protected void btnGetCoupons_Click(object sender, EventArgs e)
    {
        int AffiliateID = Convert.ToInt32(Request.QueryString["ID"]);
        int CustomerID = Convert.ToInt32(Session["AppUserID"]);

        Response.Redirect("AllCampaigns.aspx?ID=" + AffiliateID);
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        CustomerFeedback CF = new CustomerFeedback();
        CF.CustomerID = Convert.ToInt32(Session["AppUserID"]);
        CF.CompanyID = CompanyID;
        CF.Feedback=txtFeedback.Text;
        CF.Time = DateTime.Now;
        CF.Rating = 0;
        new CustomerFeedbackLogic().Insert(CF);
       
        Response.Redirect("CustomerViewProfile.aspx?ID="+CF.CompanyID);
    }


    protected void Page_PreInit(object sender, EventArgs e)
    {
        int MyID = Convert.ToInt32(Session["AppUserID"]);
        Me = new AppUserLogic().SelectByID(MyID);
        if (Me.Type.Equals("Company"))
        {
            this.MasterPageFile = "~/CompanyMasterPage.master";
        }
        else if (Me.Type.Equals("Affiliate"))
        {
            this.MasterPageFile = "~/AffiliateMasterPage.master";
        }
        else if (Me.Type.Equals("Customer"))
        {
            this.MasterPageFile = "~/CustomerMasterPage.master";
        }
        else if (Me.Type.Equals("Admin"))
        {
            this.MasterPageFile = "~/MasterPage.master";
        }
    }
}