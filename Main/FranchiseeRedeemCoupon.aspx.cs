using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Business.Logic;
using System.Data;

public partial class FranchiseeRedeemCoupon : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        DataTable dt=new CouponLogic().SelectByCode(txtSearch.Text);
        Repeater1.DataSource = dt;
        Repeater1.DataBind();

    }

    protected void btnTransfer_Click(object sender, EventArgs e)
    {
        LinkButton btn = (LinkButton)sender;
        int ID = Convert.ToInt32(btn.CommandArgument);
        new CouponLogic().RedeemCoupon(ID, Convert.ToInt32(Session["AppUserID"]));
        
        Page_Load(new object(),new EventArgs());
    }
}