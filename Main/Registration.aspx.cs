using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Business.Logic;
using System.Data;
using System.Data.SqlClient;

public partial class Registration : System.Web.UI.Page
{
    int  CityID;
    protected void Page_Load(object sender, EventArgs e)
    {
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
        lblOptional.Visible = false;

       
    }
    protected void ddlState_SelectedIndexChanged(object sender, EventArgs e)
    {
        int StateID = int.Parse(ddlState.SelectedValue.ToString());
        DataTable dt1 = new CityLogic().DisplayCities(StateID);
        ddlCity.DataSource = dt1;

        ddlCity.DataTextField = dt1.Columns["CityName"].ToString();
        ddlCity.DataBind();
    }

    
    protected void lbtnSave_Click(object sender, EventArgs e)
    {


        AppUser u1 = new AppUser();
        u1.Name = txtName.Text;
        u1.Address = txtArea.Text;
       
        u1.State = ddlState.SelectedItem.Text;
        u1.City = ddlCity.SelectedItem.Text;
        u1.Email = txtEmail.Text;
        u1.Mobile = txtMobile.Text;
        u1.Username = txtUsername.Text;
        u1.Password = txtPassword.Text;
        u1.Type = typeDropDown.SelectedValue;
        u1.LastLoginTime = DateTime.Now;
        u1.LoginCount = 0;
        u1.Photo = "img/avatar.png";
        u1.ThumbnailPhoto = " ";
        u1.LastShakeTime = DateTime.Now;
        if (profilepic.HasFile)
        {
            string name = profilepic.FileName;
            string uname = DateTime.Now.Ticks + name;
            string relpath = "uploads/" + uname;
            string abspath = Server.MapPath("~") + "/"+ relpath;

            profilepic.SaveAs(abspath);
            u1.Photo = relpath;
            u1.ThumbnailPhoto = relpath;
        }
        
        
        if (typeDropDown.SelectedValue.Equals("Company") || typeDropDown.SelectedValue.Equals("Agent"))
        {
            u1.Status = "pending";
            if (typeDropDown.SelectedValue.Equals("Company"))
            { 
                
            }
        }
        else
        {
            u1.Status = "approved";
        }

        

        u1.CompanyID = 0;
        u1.RegistrationTime = DateTime.Now;
        u1.PayPalAccount = " ";

        AppUserLogic l2 = new AppUserLogic();
        DataTable dt2=l2.CheckUserName(u1.Username);
        if (dt2.Rows.Count > 0)
        {
            lblOptional.Visible = true;
            lblOptional.Text = "Username already Exists.";
        }
        else
        {
            AppUserLogic l1 = new AppUserLogic();
            int x = l1.Insert(u1);

            if (u1.Type == "Company")
            {
                Response.Redirect("index.aspx");

            }
            else
            {
                Response.Redirect("index.aspx");
            }
        }
    }



}