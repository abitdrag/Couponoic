using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Business.Logic;

public partial class CompanyProfileFeedback : System.Web.UI.Page
{
    public int CompanyID;
    protected void Page_Load(object sender, EventArgs e)
    {
        CompanyID = Convert.ToInt32(Session["AppUserID"]);
        DataTable dt = new AppUserLogic().ListAllFeedbacks(CompanyID);
        rptr2.DataSource = dt;
        rptr2.DataBind();
    }
}