using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Business.Logic;
using System.Data;

public partial class CompanyAffiliates : System.Web.UI.Page
{
    public int CompanyID;
    protected void Page_Load(object sender, EventArgs e)
    {
        CompanyID = Convert.ToInt32(Session["AppUserID"]);
        DataTable dt = new AppUserLogic().ListMyAffiliates(CompanyID);
        rptrAllAffiliates.DataSource = dt;
        rptrAllAffiliates.DataBind();
    }
}