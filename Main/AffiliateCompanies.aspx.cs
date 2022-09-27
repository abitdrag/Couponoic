using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Business.Logic;
using System.Data;

public partial class AffiliateCompanies : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataTable dt = new CompanyAffiliateLogic().MyCompanies(Convert.ToInt32(Session["AppUserID"]));
        rptrCompany.DataSource = dt;
        rptrCompany.DataBind();
    }
}