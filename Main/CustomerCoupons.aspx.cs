using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Business.Logic;

public partial class CustomerCoupons : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Repeater1.DataSource = new CouponLogic().AllCoupons(Convert.ToInt32(Session["AppUserID"]));
        Repeater1.DataBind();
    }
}