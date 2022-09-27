using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Business.Logic;
using System.Data;

public partial class AffiliateMasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int ID = Convert.ToInt32(Session["AppUserID"]);
        AppUser au = new AppUserLogic().SelectByID(ID);
        lblUser.Text = au.Name;
        if (Session["AppUserID"] == null)
        {
            Response.Redirect("index.aspx");
        }

        DataTable dt=new CouponLogic().DisplayCouponRequests(ID);
        lblNotification.Text = dt.Rows.Count.ToString();
        Repeater1.DataSource = dt;
        Repeater1.DataBind();
        imgPhoto.ImageUrl = au.Photo;
    }
}
