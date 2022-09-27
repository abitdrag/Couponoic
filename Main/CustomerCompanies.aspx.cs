using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Business.Logic;
using System.Data;

public partial class CustomerCompanies : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataTable dt=new FollowerLogic().SearchFollower(Convert.ToInt32(Session["AppUserID"]));
        rptrCompany.DataSource = dt;
        rptrCompany.DataBind();
    }

    protected void btnRemove_Click(object sender, EventArgs e)
    {

        LinkButton btn1 = (LinkButton)sender;

       
        int CustomerID = Convert.ToInt32(Session["AppUserID"]);
        int CompanyID = Convert.ToInt32(btn1.CommandArgument);

        new FollowerLogic().Delete(CustomerID,CompanyID);
        Page_Load(sender, e);


    }
}