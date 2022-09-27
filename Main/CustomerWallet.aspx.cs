using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Business.Logic;

public partial class CustomerWallet : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Repeater1.DataSource = new CouponLogic().MyCoupons(Convert.ToInt32(Session["AppUserID"]));
        Repeater1.DataBind();
    }

    protected void btnFranchisee_Click(object sender, EventArgs e)
    {
        LinkButton b = (LinkButton)sender;
        rptrFranchisee.DataSource = new AppUserLogic().ViewFranchisees(Convert.ToInt32(b.CommandArgument));
        rptrFranchisee.DataBind();
    }
}