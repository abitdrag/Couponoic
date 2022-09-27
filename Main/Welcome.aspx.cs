using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Business.Logic;

public partial class Welcome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            rptr1.DataSource = new CampaignLogic().ViewAll();
            rptr1.DataBind();

            //rptr2.DataSource = new CategoryLogic().SelectAll();
            //rptr2.DataBind();

            rptr3.DataSource = new AppUserLogic().Search("", "", "Company");
            rptr3.DataBind();
        }
    }

    protected void btnCompany_Click(object sender, EventArgs e)
    {
        

    }
    protected void btnReset_Click(object sender, EventArgs e)
    {
        rptr1.DataSource = new CampaignLogic().ViewAll();
        rptr1.DataBind();

    }
}