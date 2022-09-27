using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Business.Logic;
using System.Data.SqlClient;
using System.Data;

public partial class AdminRequests : System.Web.UI.Page
{
    int AppUserID;
    DataTable dt;
    protected void Page_Load(object sender, EventArgs e)
    {
        AppUserLogic al = new AppUserLogic();
         dt=al.DisplayRequests();


         GridView1.DataSource = dt;
         GridView1.DataBind();
    }


   

    protected void Grid_RowCommand(object sender, EventArgs e)
    {


    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Select")
        {
            AppUserLogic al = new AppUserLogic();
            LinkButton lnkView = (LinkButton)e.CommandSource;
            String s = lnkView.CommandArgument;
            AppUser au = al.SelectByID(Convert.ToInt32(e.CommandArgument));
            int id = Convert.ToInt32(e.CommandArgument);
            
            int x = al.ApproveRequest(au, id);
            new SendEmail().SendMail(au.Email, "Confirmation from Couponoic", "Your account has been activated. Please log in to continue");
            Response.Redirect("AdminRequests.aspx");
        }

        if (e.CommandName == "Deny")
        {
            AppUserLogic al = new AppUserLogic();
            LinkButton lnkView = (LinkButton)e.CommandSource;
            String s = lnkView.CommandArgument;
            AppUser au = al.SelectByID(Convert.ToInt32(e.CommandArgument));
            int id = Convert.ToInt32(e.CommandArgument);

            int x = al.DeleteRequest(au, id);
            Response.Redirect("AdminRequests.aspx");


        }


    }
    
}