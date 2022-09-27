using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Business.Logic;
using System.Data;

public partial class CustomerHome : System.Web.UI.Page
{
   
    public void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DataTable dt = new FollowerLogic().SearchFollower(Convert.ToInt32(Session["AppUserID"]));
            DataTable dt1 = new CategoryLogic().SelectAll();
            ddlCategory.Items.Add("All");
            ddlCategory.DataSource = dt1;
            ddlCategory.DataTextField = "Name";
            ddlCategory.DataValueField = "CategoryID";

            ddlCategory.DataBind();

            ddlCategory.Items.Add("All");
            ddlCompany.DataSource = new AppUserLogic().Search("", "", "Company");
            ddlCompany.DataTextField = "Name";
            ddlCompany.DataValueField = "AppUserID";

            ddlCompany.DataBind();
            if (dt.Rows.Count == 0)
            {
                dt = new CampaignLogic().ViewAll();
                campaigns1.DataSource = dt;
                campaigns1.DataBind();
            }
            else
            {

                DataTable dt2 = new CampaignLogic().FollowerCampaigns(Convert.ToInt32(Session["AppUserID"]));
                int i = dt2.Rows.Count;
                dt2.Merge(new CampaignLogic().NonFollowerCampaigns(Convert.ToInt32(Session["AppUserID"])));

                campaigns1.DataSource = dt2;
                campaigns1.DataBind();

                for (int j = 0; j < i; j++)
                {
                    LinkButton btn1 = (LinkButton)campaigns1.Items[j].FindControl("btnFav");
                    btn1.Text = "Company In Favourites";
                }

            }

        }

    }

    protected void btnAffiliate_Click(object sender, EventArgs e)
    {

        Response.Redirect("ViewAffiliates.aspx?ID="+ Eval("CampaignID"));
    }

    protected void btnFav_Click(object sender,EventArgs e) {

        LinkButton btn1 = (LinkButton)sender;

        Follower fl = new Follower();
        fl.CustomerID = Convert.ToInt32(Session["AppUserID"]);
        fl.CompanyID=Convert.ToInt32(btn1.CommandArgument);

        if (btn1.Text.Equals("Add Company To Favourites"))
        {
            btn1.Text = "Remove Company from Favourites";
            new FollowerLogic().Insert(fl);
        }

        else {
            btn1.Text = "Add Company To Favourites";
            int CoID = Convert.ToInt32(btn1.CommandArgument);
            new FollowerLogic().Delete(Convert.ToInt32(Session["AppUserID"]), CoID);
            
        }

        Page_Load(new object(), new EventArgs());
    }

    protected void btnFilter_Click(object sender, EventArgs e)
    {
        
            int CategoryID = Convert.ToInt32(ddlCategory.SelectedValue);
            int CompanyID = Convert.ToInt32(ddlCompany.SelectedValue);

            if (ddlCategory.SelectedItem.Equals("All") && ddlCompany.SelectedItem.Equals("All"))
            {
                Page_Load(sender, e);
            }

            else if(ddlCategory.SelectedItem.Equals("All"))
            {
                CategoryID=0;
            }

            else if(ddlCompany.SelectedItem.Equals("All"))
            {
                CompanyID=0;
            }

            campaigns1.DataSource=new CampaignLogic().FilterByCategory(CategoryID, CompanyID);
            campaigns1.DataBind();
            

    }
}
    
