using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Business.Logic;
using System.Data;

public partial class AffiliateCouponRequests : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataTable dt = new CouponLogic().DisplayCouponRequests(Convert.ToInt32(Session["AppUserID"]));
        Repeater1.DataSource = dt;
        Repeater1.DataBind();
    }

    protected void btnApprove_Click(object sender, EventArgs e)
    {
        LinkButton btn = (LinkButton)sender;
        int ID = Convert.ToInt32(btn.CommandArgument);
        new CouponLogic().ApproveCouponRequest(ID);
        AppUser a = new AppUserLogic().SelectByID(ID);
        new SendEmail().SendMail(a.Email, "Coupon Request Approval", "Your Coupon Request has been accepted. Kindly login to view your coupon code.");
        Page_Load(sender, e);
    }
    
    protected void btnReject_Click(object sender, EventArgs e)
    {
        LinkButton btn = (LinkButton)sender;
        int ID = Convert.ToInt32(btn.CommandArgument);
        new CouponLogic().DeleteCouponRequest(ID);
        AppUser a = new AppUserLogic().SelectByID(ID);
        new SendEmail().SendMail(a.Email, "Coupon Request Rejected", "Your Coupon Request has been rejected. Kindly contact your affiliate.");
        Page_Load(sender, e);
    }
}