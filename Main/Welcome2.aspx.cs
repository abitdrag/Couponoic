using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Business.Logic;
using System.Data;

public partial class Welcome2 : System.Web.UI.Page
{
   
         protected void Page_Load(object sender, EventArgs e)
    {
        rptr1.DataSource = new CampaignLogic().ViewAll();
        rptr1.DataBind();

        //rptr2.DataSource = new CategoryLogic().SelectAll();
        //rptr2.DataBind();

        rptr3.DataSource = new AppUserLogic().Search("", "", "Company");
        rptr3.DataBind();
    }

   protected void btnCompany_Click(object sender, EventArgs e)
    {
       /* LinkButton btn = (LinkButton)sender;
        String name = btn.CommandArgument.ToString();
        DataTable dt = new CampaignLogic().FilterCampaigns(name);
        rptr1.DataSource = dt;
        rptr1.DataBind();*/

    }
    protected void btnReset_Click(object sender, EventArgs e)
    {
        rptr1.DataSource = new CampaignLogic().ViewAll();
        rptr1.DataBind();

    }
    }
