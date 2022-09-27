using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Business.Logic;
using System.Data;

public partial class SearchCompany : System.Web.UI.Page
{
    AppUserLogic AUL = new AppUserLogic();
    DataTable dt;

    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
        dt = AUL.SelectAll();
        GridView1.DataSource = dt;
        GridView1.DataBind();
        }
     }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        DataTable dt = AUL.Search(txtSearch.Text, txtCity.Text, ddlType.SelectedValue);
        GridView1.DataSource = dt;
        GridView1.DataBind();
        
    }

    protected void btnlb1_Click(object sender, EventArgs e)
    {

        LinkButton btn = (LinkButton)sender;
        lbl.Text = btn.CommandArgument;
        Response.Redirect("CustomerViewProfile.aspx?ID=" + lbl.Text);

    }

    protected void btnDelete_Click(object sender, EventArgs e)
    {

       LinkButton btn = (LinkButton)sender;
       int UID = Convert.ToInt32(btn.CommandArgument);
       new AppUserLogic().Delete(UID);
       btnSearch_Click(sender, e);
       
    }
    




    
}