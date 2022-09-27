using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Business.Logic;
using System.Data;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataTable dt = new AppUserLogic().DisplayRequests();
        int n = dt.Rows.Count;

        lblNotification.Text = n.ToString();

        Repeater1.DataSource = dt;
        Repeater1.DataBind();
    }
}
