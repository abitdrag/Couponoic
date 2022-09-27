using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Business.Logic;
using System.Data;

public partial class FranchiseeAcceptedCoupons : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       DataTable dt= new CouponLogic().ViewAcceptedCoupons(Convert.ToInt32(Session["AppUserID"]));
       Repeater1.DataSource = dt;
       Repeater1.DataBind();
    }
}