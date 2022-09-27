using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Business.Logic;
using System.Data;

public partial class CompanyProfile : System.Web.UI.Page
{
    public string AppUsername, AboutMe, AppUserAddress, AppUserCity, AppUserState, AppUserEmail, AppUserMobile,Name1,Email1,Phone1;
    public string Name2, Email2, Phone2, Name3, Email3, Phone3;
    public int CompanyID;
    protected void Page_Load(object sender, EventArgs e)
    {
        CompanyID = Convert.ToInt32(Session["AppUserID"]);
        AppUser au = new AppUserLogic().SelectByID(CompanyID);
        AppUsername = au.Name;
        AppUserAddress = au.Address;
        AppUserCity = au.City;
        AppUserState = au.State;
        AppUserEmail = au.Email;
        AppUserMobile = au.Mobile;
        CompanyContact cc = new CompanyContactLogic().SelectByCompanyID(CompanyID);
        AboutMe = cc.AboutMe;
        if (!Page.IsPostBack)
        {
            txtName1.Text = cc.Name1;
            txtName2.Text = cc.Name2;
            txtName3.Text = cc.Name3;
            txtPhone1.Text = cc.Phone1;
            txtPhone2.Text = cc.Phone2;
            txtPhone3.Text = cc.Phone3;
            txtEmail1.Text = cc.Email1;
            txtEmail2.Text = cc.Email2;
            txtEmail3.Text = cc.Email3;
        }
        Name1 = cc.Name1;
        Email1 = cc.Email1;
        Phone1 = cc.Phone1;
        Name2 = cc.Name2;
        Email2 = cc.Email2;
        Phone2 = cc.Phone2;
        Name3 = cc.Name3;
        Email3 = cc.Email3;
        Phone3 = cc.Phone3;
       
            //block1.Visible = true;
            //block2.Visible = true;
            //block3.Visible = true;
            //if (cc.Phone1 != "Not Available" || cc.Email1 != "Not Available" || cc.Name1 != "Not Available")
            //{
            //    block1.Visible = true;
            //}
            //if (cc.Phone2 != "Not Available" || cc.Email2 != "Not Available" || cc.Name2 != "Not Available")
            //{
            //    block1.Visible = true;
            //}
            //if (cc.Phone3 != "Not Available" || cc.Email3 != "Not Available" || cc.Name3 != "Not Available")
            //{
            //    block1.Visible = true;
            //}

    }

    protected void lbtnOk_Click(object sender, EventArgs e)
    {
        string aboutMe = txtAboutMe.Text;
        AboutMe = txtAboutMe.Text;
        int i = new CompanyContactLogic().AddAboutMe(CompanyID, aboutMe);
        
    }

    protected void btnSaveDetails_Click(object sender, EventArgs e)
    {
        CompanyID = Convert.ToInt32(Session["AppUserID"]);
        CompanyContact c1 = new CompanyContactLogic().SelectByCompanyID(CompanyID);
        c1.Name1 = txtName1.Text;
        c1.Name2 = txtName2.Text;
        c1.Name3 = txtName3.Text;
        c1.Phone1 = txtPhone1.Text;
        c1.Phone2 = txtPhone2.Text;
        c1.Phone3 = txtPhone3.Text;
        c1.Email1 = txtEmail1.Text;
        c1.Email2 = txtEmail2.Text;
        c1.Email3 = txtEmail3.Text;
        new CompanyContactLogic().Update(c1);
        
        Response.Redirect("CompanyProfile.aspx");
    }
}